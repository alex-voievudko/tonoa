import 'package:supabase_database_client/src/supabase_database_client.dart';
import 'package:supabase_database_client/src/supabase_database_failure.dart';

class FakeSupabaseDatabaseClient implements SupabaseDatabaseClient {
  FakeSupabaseDatabaseClient({
    Map<String, List<Map<String, dynamic>>>? seed,
    Map<String, Object?>? rpcResponses,
    this.selectFailure,
    this.insertFailure,
    this.updateFailure,
    this.deleteFailure,
    this.rpcFailure,
  }) : _tables = {
         for (final entry in (seed ?? const {}).entries)
           entry.key: List<Map<String, dynamic>>.from(entry.value),
       },
       _rpc = Map<String, Object?>.from(rpcResponses ?? const {});

  final Map<String, List<Map<String, dynamic>>> _tables;
  final Map<String, Object?> _rpc;

  final SupabaseDatabaseFailure? selectFailure;
  final SupabaseDatabaseFailure? insertFailure;
  final SupabaseDatabaseFailure? updateFailure;
  final SupabaseDatabaseFailure? deleteFailure;
  final SupabaseDatabaseFailure? rpcFailure;

  List<Map<String, dynamic>> rowsIn(String table) =>
      List.unmodifiable(_tables[table] ?? const []);

  @override
  Future<List<Map<String, dynamic>>> selectRows({
    required String table,
    Map<String, Object>? eq,
    int? limit,
    String? orderBy,
    bool ascending = true,
  }) async {
    if (selectFailure != null) throw selectFailure!;
    final rows = (_tables[table] ?? const <Map<String, dynamic>>[])
        .where((row) => _matches(row, eq))
        .toList();
    if (orderBy != null) {
      rows.sort((a, b) {
        final av = a[orderBy] as Comparable<Object?>?;
        final bv = b[orderBy] as Comparable<Object?>?;
        if (av == null && bv == null) return 0;
        if (av == null) return ascending ? -1 : 1;
        if (bv == null) return ascending ? 1 : -1;
        return ascending ? av.compareTo(bv) : bv.compareTo(av);
      });
    }
    return limit == null ? rows : rows.take(limit).toList();
  }

  @override
  Future<Map<String, dynamic>?> selectSingle({
    required String table,
    required Map<String, Object> eq,
  }) async {
    if (selectFailure != null) throw selectFailure!;
    final rows = (_tables[table] ?? const <Map<String, dynamic>>[])
        .where((row) => _matches(row, eq))
        .toList();
    if (rows.isEmpty) return null;
    return rows.first;
  }

  @override
  Future<Map<String, dynamic>> insertRow({
    required String table,
    required Map<String, dynamic> values,
  }) async {
    if (insertFailure != null) throw insertFailure!;
    final bucket = _tables.putIfAbsent(table, () => <Map<String, dynamic>>[]);
    final copy = Map<String, dynamic>.from(values);
    bucket.add(copy);
    return copy;
  }

  @override
  Future<Map<String, dynamic>> updateRow({
    required String table,
    required Map<String, dynamic> values,
    required Map<String, Object> eq,
  }) async {
    if (updateFailure != null) throw updateFailure!;
    final bucket = _tables[table] ?? <Map<String, dynamic>>[];
    final index = bucket.indexWhere((row) => _matches(row, eq));
    if (index == -1) {
      throw NotFoundSupabaseDatabaseFailure.test();
    }
    bucket[index] = {...bucket[index], ...values};
    return bucket[index];
  }

  @override
  Future<void> deleteRows({
    required String table,
    required Map<String, Object> eq,
  }) async {
    if (deleteFailure != null) throw deleteFailure!;
    final bucket = _tables[table];
    if (bucket == null) return;
    bucket.removeWhere((row) => _matches(row, eq));
  }

  @override
  Future<T> callRpc<T>({
    required String function,
    Map<String, dynamic>? params,
  }) async {
    if (rpcFailure != null) throw rpcFailure!;
    if (!_rpc.containsKey(function)) {
      throw StateError('FakeSupabaseDatabaseClient: no stub for "$function"');
    }
    return _rpc[function] as T;
  }

  bool _matches(Map<String, dynamic> row, Map<String, Object>? eq) {
    if (eq == null) return true;
    for (final entry in eq.entries) {
      if (row[entry.key] != entry.value) return false;
    }
    return true;
  }
}
