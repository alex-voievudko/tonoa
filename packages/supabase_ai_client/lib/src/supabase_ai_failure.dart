import 'dart:async';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

sealed class SupabaseAiFailure implements Exception {
  const SupabaseAiFailure(this.message, this.cause, this.stackTrace);

  factory SupabaseAiFailure.fromError(Object error, StackTrace stackTrace) {
    if (error is SupabaseAiFailure) return error;
    if (error is SocketException || error is TimeoutException) {
      return NetworkSupabaseAiFailure(error, stackTrace);
    }
    if (error is FunctionException) {
      return _fromFunction(error, stackTrace);
    }
    return UnknownSupabaseAiFailure(error, stackTrace);
  }

  static SupabaseAiFailure _fromFunction(
    FunctionException error,
    StackTrace stackTrace,
  ) {
    final status = error.status;
    if (status == 401 || status == 403) {
      return UnauthorizedSupabaseAiFailure(error, stackTrace);
    }
    if (status == 429) {
      return RateLimitedSupabaseAiFailure(error, stackTrace);
    }
    if (status >= 500) {
      return ServerSupabaseAiFailure(error, stackTrace);
    }
    return UnknownSupabaseAiFailure(error, stackTrace);
  }

  final String message;
  final Object cause;
  final StackTrace stackTrace;

  @override
  // Intentional use of runtimeType in toString() to preserve per-subtype
  // identity in logs.
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType: $message';
}

class NetworkSupabaseAiFailure extends SupabaseAiFailure {
  NetworkSupabaseAiFailure(Object cause, StackTrace stackTrace)
    : super('network unavailable', cause, stackTrace);

  NetworkSupabaseAiFailure.test() : this(Exception('test'), StackTrace.empty);
}

class UnauthorizedSupabaseAiFailure extends SupabaseAiFailure {
  UnauthorizedSupabaseAiFailure(
    FunctionException cause,
    StackTrace stackTrace,
  ) : super('unauthorized', cause, stackTrace);

  UnauthorizedSupabaseAiFailure.test()
    : this(const FunctionException(status: 401), StackTrace.empty);
}

class RateLimitedSupabaseAiFailure extends SupabaseAiFailure {
  RateLimitedSupabaseAiFailure(
    FunctionException cause,
    StackTrace stackTrace,
  ) : super('rate limited', cause, stackTrace);

  RateLimitedSupabaseAiFailure.test()
    : this(const FunctionException(status: 429), StackTrace.empty);
}

class ServerSupabaseAiFailure extends SupabaseAiFailure {
  ServerSupabaseAiFailure(FunctionException cause, StackTrace stackTrace)
    : super('edge function error', cause, stackTrace);

  ServerSupabaseAiFailure.test()
    : this(const FunctionException(status: 500), StackTrace.empty);
}

class UnknownSupabaseAiFailure extends SupabaseAiFailure {
  UnknownSupabaseAiFailure(Object cause, StackTrace stackTrace)
    : super('unexpected ai failure', cause, stackTrace);

  UnknownSupabaseAiFailure.test() : this(Exception('test'), StackTrace.empty);
}
