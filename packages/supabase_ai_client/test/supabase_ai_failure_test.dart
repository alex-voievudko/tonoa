import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_ai_client/supabase_ai_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  group('SupabaseAiFailure.fromError', () {
    test('maps SocketException to NetworkSupabaseAiFailure', () {
      const error = SocketException('no internet');

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<NetworkSupabaseAiFailure>());
    });

    test('maps TimeoutException to NetworkSupabaseAiFailure', () {
      final error = TimeoutException('slow');

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<NetworkSupabaseAiFailure>());
    });

    test('maps FunctionException 401 to UnauthorizedSupabaseAiFailure', () {
      const error = FunctionException(status: 401);

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<UnauthorizedSupabaseAiFailure>());
    });

    test('maps FunctionException 403 to UnauthorizedSupabaseAiFailure', () {
      const error = FunctionException(status: 403);

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<UnauthorizedSupabaseAiFailure>());
    });

    test('maps FunctionException 429 to RateLimitedSupabaseAiFailure', () {
      const error = FunctionException(status: 429);

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<RateLimitedSupabaseAiFailure>());
    });

    test('maps FunctionException 5xx to ServerSupabaseAiFailure', () {
      const error = FunctionException(status: 503);

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<ServerSupabaseAiFailure>());
    });

    test('maps 4xx FunctionException (not 401/403/429) to Unknown', () {
      const error = FunctionException(status: 418);

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure, isA<UnknownSupabaseAiFailure>());
    });

    test('falls back to UnknownSupabaseAiFailure for non-typed errors', () {
      final failure = SupabaseAiFailure.fromError(
        StateError('boom'),
        StackTrace.empty,
      );

      expect(failure, isA<UnknownSupabaseAiFailure>());
    });

    test('returns same instance when error is already a SupabaseAiFailure', () {
      final original = NetworkSupabaseAiFailure(
        Exception('preserved'),
        StackTrace.empty,
      );

      final wrapped = SupabaseAiFailure.fromError(original, StackTrace.empty);

      expect(wrapped, same(original));
    });

    test('toString includes the concrete subtype name', () {
      const error = SocketException('x');

      final failure = SupabaseAiFailure.fromError(error, StackTrace.empty);

      expect(failure.toString(), startsWith('NetworkSupabaseAiFailure:'));
    });
  });
}
