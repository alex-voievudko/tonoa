import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_database_client/supabase_database_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class _MockSupabaseClient extends Mock implements SupabaseClient {}

void main() {
  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  late SupabaseClient supabase;
  late SupabaseDatabaseClient client;

  setUp(() {
    supabase = _MockSupabaseClient();
    client = SupabaseDatabaseClient(supabaseClient: supabase);
  });

  group('selectRows', () {
    test('maps PostgrestException 42501 to UnauthorizedFailure', () async {
      when(() => supabase.from(any())).thenThrow(
        const PostgrestException(message: 'rls', code: '42501'),
      );

      await expectLater(
        client.selectRows(table: 'brand_profiles'),
        throwsA(isA<UnauthorizedSupabaseDatabaseFailure>()),
      );
    });

    test('maps SocketException to NetworkFailure', () async {
      when(() => supabase.from(any())).thenThrow(const SocketException('x'));

      await expectLater(
        client.selectRows(table: 't'),
        throwsA(isA<NetworkSupabaseDatabaseFailure>()),
      );
    });
  });

  group('selectSingle', () {
    test('maps PostgrestException 23505 to ConflictFailure', () async {
      when(() => supabase.from(any())).thenThrow(
        const PostgrestException(message: 'unique', code: '23505'),
      );

      await expectLater(
        client.selectSingle(table: 'x', eq: const {'id': '1'}),
        throwsA(isA<ConflictSupabaseDatabaseFailure>()),
      );
    });
  });

  group('insertRow', () {
    test('maps SocketException to NetworkFailure', () async {
      when(() => supabase.from(any())).thenThrow(const SocketException('x'));

      await expectLater(
        client.insertRow(table: 't', values: const {'a': 1}),
        throwsA(isA<NetworkSupabaseDatabaseFailure>()),
      );
    });

    test('maps PostgrestException PGRST116 to NotFoundFailure', () async {
      when(() => supabase.from(any())).thenThrow(
        const PostgrestException(message: 'no rows', code: 'PGRST116'),
      );

      await expectLater(
        client.insertRow(table: 't', values: const {'a': 1}),
        throwsA(isA<NotFoundSupabaseDatabaseFailure>()),
      );
    });
  });

  group('updateRow', () {
    test('maps PostgrestException 42501 to UnauthorizedFailure', () async {
      when(() => supabase.from(any())).thenThrow(
        const PostgrestException(message: 'rls', code: '42501'),
      );

      await expectLater(
        client.updateRow(
          table: 't',
          values: const {'a': 1},
          eq: const {'id': '1'},
        ),
        throwsA(isA<UnauthorizedSupabaseDatabaseFailure>()),
      );
    });
  });

  group('deleteRows', () {
    test('maps StateError to UnknownFailure', () async {
      when(() => supabase.from(any())).thenThrow(StateError('boom'));

      await expectLater(
        client.deleteRows(table: 't', eq: const {'id': '1'}),
        throwsA(isA<UnknownSupabaseDatabaseFailure>()),
      );
    });
  });

  group('callRpc', () {
    test('maps PostgrestException 42501 to UnauthorizedFailure', () async {
      when(
        () => supabase.rpc<dynamic>(any(), params: any(named: 'params')),
      ).thenThrow(const PostgrestException(message: 'rls', code: '42501'));

      await expectLater(
        client.callRpc<dynamic>(function: 'usage_status'),
        throwsA(isA<UnauthorizedSupabaseDatabaseFailure>()),
      );
    });

    test('maps SocketException to NetworkFailure', () async {
      when(
        () => supabase.rpc<dynamic>(any(), params: any(named: 'params')),
      ).thenThrow(const SocketException('offline'));

      await expectLater(
        client.callRpc<dynamic>(function: 'usage_status'),
        throwsA(isA<NetworkSupabaseDatabaseFailure>()),
      );
    });
  });
}
