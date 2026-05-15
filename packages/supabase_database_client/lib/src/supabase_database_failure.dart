import 'dart:async';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

sealed class SupabaseDatabaseFailure implements Exception {
  const SupabaseDatabaseFailure(this.message, this.cause, this.stackTrace);

  factory SupabaseDatabaseFailure.fromError(
    Object error,
    StackTrace stackTrace,
  ) {
    if (error is SupabaseDatabaseFailure) {
      return error;
    }
    if (error is SocketException || error is TimeoutException) {
      return NetworkSupabaseDatabaseFailure(error, stackTrace);
    }
    if (error is PostgrestException) {
      return _fromPostgrest(error, stackTrace);
    }
    return UnknownSupabaseDatabaseFailure(error, stackTrace);
  }

  static SupabaseDatabaseFailure _fromPostgrest(
    PostgrestException error,
    StackTrace stackTrace,
  ) {
    switch (error.code) {
      case 'PGRST116':
        return NotFoundSupabaseDatabaseFailure(error, stackTrace);
      case '23505':
        return ConflictSupabaseDatabaseFailure(error, stackTrace);
      case '42501':
        return UnauthorizedSupabaseDatabaseFailure(error, stackTrace);
      default:
        return UnknownSupabaseDatabaseFailure(error, stackTrace);
    }
  }

  final String message;
  final Object cause;
  final StackTrace stackTrace;

  @override
  // Intentional use of runtimeType in toString() to preserve per-subtype
  // identity in logs (e.g. NetworkSupabaseDatabaseFailure vs the sealed base).
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType: $message';
}

class NetworkSupabaseDatabaseFailure extends SupabaseDatabaseFailure {
  NetworkSupabaseDatabaseFailure(Object cause, StackTrace stackTrace)
    : super('network unavailable', cause, stackTrace);

  NetworkSupabaseDatabaseFailure.test()
    : this(Exception('test'), StackTrace.empty);
}

class NotFoundSupabaseDatabaseFailure extends SupabaseDatabaseFailure {
  NotFoundSupabaseDatabaseFailure(
    PostgrestException cause,
    StackTrace stackTrace,
  ) : super(cause.message, cause, stackTrace);

  NotFoundSupabaseDatabaseFailure.test()
    : this(
        const PostgrestException(message: 'not found', code: 'PGRST116'),
        StackTrace.empty,
      );
}

class ConflictSupabaseDatabaseFailure extends SupabaseDatabaseFailure {
  ConflictSupabaseDatabaseFailure(
    PostgrestException cause,
    StackTrace stackTrace,
  ) : super(cause.message, cause, stackTrace);

  ConflictSupabaseDatabaseFailure.test()
    : this(
        const PostgrestException(message: 'conflict', code: '23505'),
        StackTrace.empty,
      );
}

class UnauthorizedSupabaseDatabaseFailure extends SupabaseDatabaseFailure {
  UnauthorizedSupabaseDatabaseFailure(
    PostgrestException cause,
    StackTrace stackTrace,
  ) : super(cause.message, cause, stackTrace);

  UnauthorizedSupabaseDatabaseFailure.test()
    : this(
        const PostgrestException(message: 'rls', code: '42501'),
        StackTrace.empty,
      );
}

class UnknownSupabaseDatabaseFailure extends SupabaseDatabaseFailure {
  UnknownSupabaseDatabaseFailure(Object cause, StackTrace stackTrace)
    : super('unexpected database failure', cause, stackTrace);

  UnknownSupabaseDatabaseFailure.test()
    : this(Exception('test'), StackTrace.empty);
}
