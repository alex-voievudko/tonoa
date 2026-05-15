import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_auth_client/supabase_auth_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class _MockSupabaseClient extends Mock implements SupabaseClient {}

class _MockGoTrueClient extends Mock implements GoTrueClient {}

void main() {
  late SupabaseClient supabaseClient;
  late GoTrueClient goTrueClient;
  late SupabaseAuthClient client;

  setUp(() {
    supabaseClient = _MockSupabaseClient();
    goTrueClient = _MockGoTrueClient();
    when(() => supabaseClient.auth).thenReturn(goTrueClient);
    client = SupabaseAuthClient(supabaseClient: supabaseClient);
  });

  group('sendEmailOtp', () {
    test('forwards email to GoTrueClient.signInWithOtp', () async {
      when(
        () => goTrueClient.signInWithOtp(
          email: any(named: 'email'),
          shouldCreateUser: any(named: 'shouldCreateUser'),
        ),
      ).thenAnswer((_) async {});

      await client.sendEmailOtp(email: 'user@example.com');

      verify(
        () => goTrueClient.signInWithOtp(
          email: 'user@example.com',
          shouldCreateUser: true,
        ),
      ).called(1);
    });

    test('maps SocketException to NetworkSupabaseAuthFailure', () async {
      when(
        () => goTrueClient.signInWithOtp(
          email: any(named: 'email'),
          shouldCreateUser: any(named: 'shouldCreateUser'),
        ),
      ).thenThrow(const SocketException('offline'));

      await expectLater(
        client.sendEmailOtp(email: 'user@example.com'),
        throwsA(isA<NetworkSupabaseAuthFailure>()),
      );
    });

    test(
      'maps AuthException(rate-limit) to RateLimitedSupabaseAuthFailure',
      () async {
        when(
          () => goTrueClient.signInWithOtp(
            email: any(named: 'email'),
            shouldCreateUser: any(named: 'shouldCreateUser'),
          ),
        ).thenThrow(
          const AuthException('too many', code: 'over_email_send_rate_limit'),
        );

        await expectLater(
          client.sendEmailOtp(email: 'user@example.com'),
          throwsA(isA<RateLimitedSupabaseAuthFailure>()),
        );
      },
    );

    test('maps TimeoutException to NetworkSupabaseAuthFailure', () async {
      when(
        () => goTrueClient.signInWithOtp(
          email: any(named: 'email'),
          shouldCreateUser: any(named: 'shouldCreateUser'),
        ),
      ).thenThrow(TimeoutException('slow'));

      await expectLater(
        client.sendEmailOtp(email: 'user@example.com'),
        throwsA(isA<NetworkSupabaseAuthFailure>()),
      );
    });
  });
}
