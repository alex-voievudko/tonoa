import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_ai_client/supabase_ai_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class _MockSupabaseClient extends Mock implements SupabaseClient {}

class _MockFunctionsClient extends Mock implements FunctionsClient {}

void main() {
  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  late SupabaseClient supabase;
  late FunctionsClient functions;
  late SupabaseAiClient client;

  setUp(() {
    supabase = _MockSupabaseClient();
    functions = _MockFunctionsClient();
    when(() => supabase.functions).thenReturn(functions);
    client = SupabaseAiClient(supabaseClient: supabase);
  });

  group('invokeGenerateContent', () {
    test('invokes the generate-content function with payload', () async {
      when(
        () => functions.invoke(any(), body: any(named: 'body')),
      ).thenAnswer(
        (_) async => FunctionResponse(data: {'ok': true}, status: 200),
      );

      final result = await client.invokeGenerateContent(
        payload: const {'type': 'contentIdeas'},
      );

      expect(result, {'ok': true});
      verify(
        () => functions.invoke(
          'generate-content',
          body: const {'type': 'contentIdeas'},
        ),
      ).called(1);
    });

    test(
      'maps FunctionException 429 to RateLimitedSupabaseAiFailure',
      () async {
        when(
          () => functions.invoke(any(), body: any(named: 'body')),
        ).thenThrow(const FunctionException(status: 429));

        await expectLater(
          client.invokeGenerateContent(payload: const {}),
          throwsA(isA<RateLimitedSupabaseAiFailure>()),
        );
      },
    );

    test('maps SocketException to NetworkSupabaseAiFailure', () async {
      when(
        () => functions.invoke(any(), body: any(named: 'body')),
      ).thenThrow(const SocketException('offline'));

      await expectLater(
        client.invokeGenerateContent(payload: const {}),
        throwsA(isA<NetworkSupabaseAiFailure>()),
      );
    });
  });

  group('invokeProfileAudit', () {
    test('invokes the profile-audit function with payload', () async {
      when(
        () => functions.invoke(any(), body: any(named: 'body')),
      ).thenAnswer(
        (_) async => FunctionResponse(data: {'score': 70}, status: 200),
      );

      final result = await client.invokeProfileAudit(
        payload: const {'bio': 'hello'},
      );

      expect(result, {'score': 70});
      verify(
        () => functions.invoke('profile-audit', body: const {'bio': 'hello'}),
      ).called(1);
    });
  });

  group('invokeUsageStatus', () {
    test('invokes the usage-status function with empty body', () async {
      when(
        () => functions.invoke(any(), body: any(named: 'body')),
      ).thenAnswer(
        (_) async => FunctionResponse(data: {'remaining': 5}, status: 200),
      );

      final result = await client.invokeUsageStatus();

      expect(result, {'remaining': 5});
      verify(
        () => functions.invoke('usage-status', body: const {}),
      ).called(1);
    });
  });

  test(
    'throws ServerSupabaseAiFailure when data is not a JSON object',
    () async {
      when(
        () => functions.invoke(any(), body: any(named: 'body')),
      ).thenAnswer(
        (_) async => FunctionResponse(data: 'not a map', status: 200),
      );

      await expectLater(
        client.invokeGenerateContent(payload: const {}),
        throwsA(isA<ServerSupabaseAiFailure>()),
      );
    },
  );
}
