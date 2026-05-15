import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_auth_client/supabase_auth_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  group('SupabaseAuthFailure.fromError', () {
    test('maps SocketException to NetworkSupabaseAuthFailure', () {
      const error = SocketException('no internet');

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<NetworkSupabaseAuthFailure>());
    });

    test('maps TimeoutException to NetworkSupabaseAuthFailure', () {
      final error = TimeoutException('slow');

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<NetworkSupabaseAuthFailure>());
    });

    test('maps AuthException with otp_expired code to ExpiredOtpFailure', () {
      const error = AuthException('otp expired', code: 'otp_expired');

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<ExpiredOtpSupabaseAuthFailure>());
    });

    test('maps AuthException with invalid OTP code to InvalidOtpFailure', () {
      const error = AuthException(
        'invalid token',
        code: 'invalid_otp',
      );

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<InvalidOtpSupabaseAuthFailure>());
    });

    test('maps rate-limit AuthException to RateLimitedSupabaseAuthFailure', () {
      const error = AuthException(
        'too many requests',
        code: 'over_email_send_rate_limit',
      );

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<RateLimitedSupabaseAuthFailure>());
    });

    test('falls back to UnknownSupabaseAuthFailure for anything else', () {
      final failure = SupabaseAuthFailure.fromError(
        StateError('boom'),
        StackTrace.empty,
      );

      expect(failure, isA<UnknownSupabaseAuthFailure>());
    });

    test('toString includes the concrete subtype name', () {
      const error = SocketException('x');

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure.toString(), startsWith('NetworkSupabaseAuthFailure:'));
    });

    test('maps AuthException with otp_disabled code to InvalidOtpFailure', () {
      const error = AuthException('disabled', code: 'otp_disabled');

      final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<InvalidOtpSupabaseAuthFailure>());
    });

    test(
      'maps AuthException with over_request_rate_limit to RateLimitedFailure',
      () {
        const error = AuthException(
          'too many requests',
          code: 'over_request_rate_limit',
        );

        final failure = SupabaseAuthFailure.fromError(error, StackTrace.empty);

        expect(failure, isA<RateLimitedSupabaseAuthFailure>());
      },
    );

    test(
      'fromError returns the same instance when already a SupabaseAuthFailure',
      () {
        final original = NetworkSupabaseAuthFailure(
          Exception('preserved'),
          StackTrace.empty,
        );

        final wrapped = SupabaseAuthFailure.fromError(
          original,
          StackTrace.empty,
        );

        expect(wrapped, same(original));
      },
    );
  });
}
