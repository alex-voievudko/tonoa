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

  setUpAll(() {
    registerFallbackValue(OtpType.email);
  });

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

  group('verifyEmailOtp', () {
    test('forwards email + token to GoTrueClient.verifyOTP', () async {
      when(
        () => goTrueClient.verifyOTP(
          email: any(named: 'email'),
          token: any(named: 'token'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => AuthResponse());

      await client.verifyEmailOtp(email: 'user@example.com', token: '123456');

      verify(
        () => goTrueClient.verifyOTP(
          email: 'user@example.com',
          token: '123456',
          type: OtpType.email,
        ),
      ).called(1);
    });

    test(
      'maps AuthException(otp_expired) to ExpiredOtpSupabaseAuthFailure',
      () async {
        when(
          () => goTrueClient.verifyOTP(
            email: any(named: 'email'),
            token: any(named: 'token'),
            type: any(named: 'type'),
          ),
        ).thenThrow(const AuthException('expired', code: 'otp_expired'));

        await expectLater(
          client.verifyEmailOtp(email: 'user@example.com', token: '000000'),
          throwsA(isA<ExpiredOtpSupabaseAuthFailure>()),
        );
      },
    );
  });

  group('signOut', () {
    test('calls GoTrueClient.signOut', () async {
      when(() => goTrueClient.signOut()).thenAnswer((_) async {});

      await client.signOut();

      verify(() => goTrueClient.signOut()).called(1);
    });

    test('maps unknown error to UnknownSupabaseAuthFailure', () async {
      when(() => goTrueClient.signOut()).thenThrow(StateError('boom'));

      await expectLater(
        client.signOut(),
        throwsA(isA<UnknownSupabaseAuthFailure>()),
      );
    });
  });

  group('currentUserId', () {
    test('returns id when GoTrueClient.currentUser is non-null', () {
      final user = User(
        id: 'user-1',
        appMetadata: const {},
        userMetadata: const {},
        aud: 'authenticated',
        createdAt: DateTime.utc(2026).toIso8601String(),
      );
      when(() => goTrueClient.currentUser).thenReturn(user);

      expect(client.currentUserId, 'user-1');
    });

    test('returns null when GoTrueClient.currentUser is null', () {
      when(() => goTrueClient.currentUser).thenReturn(null);

      expect(client.currentUserId, isNull);
    });
  });

  group('sessionChanges', () {
    test('emits authenticated / unauthenticated based on event session', () {
      final user = User(
        id: 'user-2',
        appMetadata: const {},
        userMetadata: const {},
        aud: 'authenticated',
        createdAt: DateTime.utc(2026).toIso8601String(),
      );
      final session = Session(
        accessToken: 'access',
        tokenType: 'bearer',
        user: user,
      );
      final controller = StreamController<AuthState>.broadcast();
      addTearDown(controller.close);
      when(
        () => goTrueClient.onAuthStateChange,
      ).thenAnswer((_) => controller.stream);

      expect(
        client.sessionChanges,
        emitsInOrder(<SupabaseAuthSessionState>[
          const SupabaseAuthSessionState(userId: 'user-2'),
          const SupabaseAuthSessionState.unauthenticated(),
        ]),
      );

      controller
        ..add(AuthState(AuthChangeEvent.signedIn, session))
        ..add(const AuthState(AuthChangeEvent.signedOut, null));
    });
  });
}
