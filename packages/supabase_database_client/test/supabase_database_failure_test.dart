import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_database_client/supabase_database_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  group('SupabaseDatabaseFailure.fromError', () {
    test('maps SocketException to NetworkSupabaseDatabaseFailure', () {
      const error = SocketException('no internet');

      final failure = SupabaseDatabaseFailure.fromError(
        error,
        StackTrace.empty,
      );

      expect(failure, isA<NetworkSupabaseDatabaseFailure>());
    });

    test('maps TimeoutException to NetworkSupabaseDatabaseFailure', () {
      final error = TimeoutException('slow');

      final failure = SupabaseDatabaseFailure.fromError(
        error,
        StackTrace.empty,
      );

      expect(failure, isA<NetworkSupabaseDatabaseFailure>());
    });

    test('maps PostgrestException with code PGRST116 to NotFoundFailure', () {
      const error = PostgrestException(
        message: 'no rows',
        code: 'PGRST116',
      );

      final failure = SupabaseDatabaseFailure.fromError(
        error,
        StackTrace.empty,
      );

      expect(failure, isA<NotFoundSupabaseDatabaseFailure>());
    });

    test(
      'maps PostgrestException 23505 (unique violation) to ConflictFailure',
      () {
        const error = PostgrestException(
          message: 'unique',
          code: '23505',
        );

        final failure = SupabaseDatabaseFailure.fromError(
          error,
          StackTrace.empty,
        );

        expect(failure, isA<ConflictSupabaseDatabaseFailure>());
      },
    );

    test(
      'maps PostgrestException 42501 (RLS denial) to UnauthorizedFailure',
      () {
        const error = PostgrestException(
          message: 'rls',
          code: '42501',
        );

        final failure = SupabaseDatabaseFailure.fromError(
          error,
          StackTrace.empty,
        );

        expect(failure, isA<UnauthorizedSupabaseDatabaseFailure>());
      },
    );

    test('falls back to UnknownSupabaseDatabaseFailure', () {
      final failure = SupabaseDatabaseFailure.fromError(
        StateError('boom'),
        StackTrace.empty,
      );

      expect(failure, isA<UnknownSupabaseDatabaseFailure>());
    });

    test(
      'fromError returns the same instance when error is already a '
      'SupabaseDatabaseFailure',
      () {
        final original = NetworkSupabaseDatabaseFailure(
          Exception('preserved'),
          StackTrace.empty,
        );

        final wrapped = SupabaseDatabaseFailure.fromError(
          original,
          StackTrace.empty,
        );

        expect(wrapped, same(original));
      },
    );

    test(
      'maps PostgrestException with unmapped code to UnknownFailure',
      () {
        const error = PostgrestException(
          message: 'server error',
          code: '42P01',
        );

        final failure = SupabaseDatabaseFailure.fromError(
          error,
          StackTrace.empty,
        );

        expect(failure, isA<UnknownSupabaseDatabaseFailure>());
      },
    );

    test('toString includes the concrete subtype name', () {
      const error = SocketException('x');

      final failure = SupabaseDatabaseFailure.fromError(
        error,
        StackTrace.empty,
      );

      expect(
        failure.toString(),
        startsWith('NetworkSupabaseDatabaseFailure:'),
      );
    });
  });
}
