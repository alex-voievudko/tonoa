import 'dart:async';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

sealed class SupabaseAuthFailure implements Exception {
  const SupabaseAuthFailure(this.message, this.cause, this.stackTrace);

  factory SupabaseAuthFailure.fromError(Object error, StackTrace stackTrace) {
    if (error is SupabaseAuthFailure) {
      return error;
    }
    if (error is SocketException || error is TimeoutException) {
      return NetworkSupabaseAuthFailure(error, stackTrace);
    }
    if (error is AuthException) {
      return _fromAuthException(error, stackTrace);
    }
    return UnknownSupabaseAuthFailure(error, stackTrace);
  }

  static SupabaseAuthFailure _fromAuthException(
    AuthException error,
    StackTrace stackTrace,
  ) {
    final code = error.code;
    switch (code) {
      case 'otp_expired':
        return ExpiredOtpSupabaseAuthFailure(error, stackTrace);
      case 'invalid_otp':
      case 'otp_disabled':
        return InvalidOtpSupabaseAuthFailure(error, stackTrace);
      case 'over_email_send_rate_limit':
      case 'over_request_rate_limit':
        return RateLimitedSupabaseAuthFailure(error, stackTrace);
      default:
        return UnknownSupabaseAuthFailure(error, stackTrace);
    }
  }

  final String message;
  final Object cause;
  final StackTrace stackTrace;

  @override
  // Intentional use of runtimeType in toString() to preserve per-subtype
  // identity in logs (e.g. NetworkSupabaseAuthFailure vs the sealed base).
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType: $message';
}

class NetworkSupabaseAuthFailure extends SupabaseAuthFailure {
  NetworkSupabaseAuthFailure(Object cause, StackTrace stackTrace)
    : super('network unavailable', cause, stackTrace);

  NetworkSupabaseAuthFailure.test() : this(Exception('test'), StackTrace.empty);
}

class InvalidOtpSupabaseAuthFailure extends SupabaseAuthFailure {
  InvalidOtpSupabaseAuthFailure(AuthException cause, StackTrace stackTrace)
    : super(cause.message, cause, stackTrace);

  InvalidOtpSupabaseAuthFailure.test()
    : this(
        const AuthException('invalid', code: 'invalid_otp'),
        StackTrace.empty,
      );
}

class ExpiredOtpSupabaseAuthFailure extends SupabaseAuthFailure {
  ExpiredOtpSupabaseAuthFailure(AuthException cause, StackTrace stackTrace)
    : super(cause.message, cause, stackTrace);

  ExpiredOtpSupabaseAuthFailure.test()
    : this(
        const AuthException('expired', code: 'otp_expired'),
        StackTrace.empty,
      );
}

class RateLimitedSupabaseAuthFailure extends SupabaseAuthFailure {
  RateLimitedSupabaseAuthFailure(AuthException cause, StackTrace stackTrace)
    : super(cause.message, cause, stackTrace);

  RateLimitedSupabaseAuthFailure.test()
    : this(
        const AuthException('rate limited', code: 'over_email_send_rate_limit'),
        StackTrace.empty,
      );
}

class UnknownSupabaseAuthFailure extends SupabaseAuthFailure {
  UnknownSupabaseAuthFailure(Object cause, StackTrace stackTrace)
    : super('unexpected auth failure', cause, stackTrace);

  UnknownSupabaseAuthFailure.test() : this(Exception('test'), StackTrace.empty);
}
