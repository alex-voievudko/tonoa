import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_database_client/supabase_database_client.dart';

void main() {
  group('FakeSupabaseDatabaseClient', () {
    test('selectSingle returns the seeded row matching eq predicate', () async {
      final fake = FakeSupabaseDatabaseClient(
        seed: {
          'brand_profiles': [
            {'id': 'b1', 'user_id': 'u1'},
            {'id': 'b2', 'user_id': 'u2'},
          ],
        },
      );

      final row = await fake.selectSingle(
        table: 'brand_profiles',
        eq: const {'user_id': 'u2'},
      );

      expect(row, {'id': 'b2', 'user_id': 'u2'});
    });

    test('insertRow appends a row and records the call', () async {
      final fake = FakeSupabaseDatabaseClient();

      final inserted = await fake.insertRow(
        table: 'content_ideas',
        values: const {'id': 'i1', 'title': 't'},
      );

      expect(inserted, {'id': 'i1', 'title': 't'});
      expect(fake.rowsIn('content_ideas'), [
        {'id': 'i1', 'title': 't'},
      ]);
    });

    test('callRpc returns stubbed value for the requested function', () async {
      final fake = FakeSupabaseDatabaseClient(
        rpcResponses: {
          'usage_status': {'remaining': 5},
        },
      );

      final result = await fake.callRpc<Map<String, dynamic>>(
        function: 'usage_status',
      );

      expect(result, {'remaining': 5});
    });

    test('respects a configured failure on insertRow', () async {
      final fake = FakeSupabaseDatabaseClient(
        insertFailure: ConflictSupabaseDatabaseFailure.test(),
      );

      await expectLater(
        fake.insertRow(table: 't', values: const {'id': '1'}),
        throwsA(isA<ConflictSupabaseDatabaseFailure>()),
      );
    });
  });
}
