import 'package:supabase_database_client/src/supabase_database_failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseDatabaseClient {
  SupabaseDatabaseClient({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  Future<List<Map<String, dynamic>>> selectRows({
    required String table,
    Map<String, Object>? eq,
    int? limit,
    String? orderBy,
    bool ascending = true,
  }) async {
    return _run(() async {
      var query = _supabaseClient.from(table).select();
      if (eq != null) {
        for (final entry in eq.entries) {
          query = query.eq(entry.key, entry.value);
        }
      }
      dynamic filter = query;
      if (orderBy != null) {
        // PostgrestFilterBuilder generic types do not flow cleanly through
        // conditional chaining; the dynamic local accepts both order and
        // limit calls without forcing every code path to know the concrete
        // PostgrestTransformBuilder<T> type.
        // ignore: avoid_dynamic_calls
        filter = filter.order(orderBy, ascending: ascending);
      }
      if (limit != null) {
        // See dynamic-chain note on order() above.
        // ignore: avoid_dynamic_calls
        filter = filter.limit(limit);
      }
      final result = await filter;
      return (result as List).cast<Map<String, dynamic>>();
    });
  }

  Future<Map<String, dynamic>?> selectSingle({
    required String table,
    required Map<String, Object> eq,
  }) async {
    return _run(() async {
      var query = _supabaseClient.from(table).select();
      for (final entry in eq.entries) {
        query = query.eq(entry.key, entry.value);
      }
      return query.maybeSingle();
    });
  }

  Future<Map<String, dynamic>> insertRow({
    required String table,
    required Map<String, dynamic> values,
  }) async {
    return _run(
      () => _supabaseClient.from(table).insert(values).select().single(),
    );
  }

  Future<Map<String, dynamic>> updateRow({
    required String table,
    required Map<String, dynamic> values,
    required Map<String, Object> eq,
  }) async {
    return _run(() async {
      var query = _supabaseClient.from(table).update(values);
      for (final entry in eq.entries) {
        query = query.eq(entry.key, entry.value);
      }
      return query.select().single();
    });
  }

  Future<void> deleteRows({
    required String table,
    required Map<String, Object> eq,
  }) async {
    await _run(() async {
      var query = _supabaseClient.from(table).delete();
      for (final entry in eq.entries) {
        query = query.eq(entry.key, entry.value);
      }
      await query;
    });
  }

  Future<T> callRpc<T>({
    required String function,
    Map<String, dynamic>? params,
  }) async {
    return _run(
      () => _supabaseClient.rpc<T>(function, params: params),
    );
  }

  Future<T> _run<T>(Future<T> Function() body) async {
    try {
      return await body();
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        SupabaseDatabaseFailure.fromError(error, stackTrace),
        stackTrace,
      );
    }
  }
}
