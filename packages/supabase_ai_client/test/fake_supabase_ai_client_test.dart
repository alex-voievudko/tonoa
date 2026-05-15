import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_ai_client/supabase_ai_client.dart';

void main() {
  group('FakeSupabaseAiClient', () {
    test('returns the stubbed response for generate-content', () async {
      final fake = FakeSupabaseAiClient(
        generateContentResponse: {
          'type': 'contentIdeas',
          'content': {'ideas': <dynamic>[]},
        },
      );

      final result = await fake.invokeGenerateContent(
        payload: const {'type': 'contentIdeas'},
      );

      expect(result['type'], 'contentIdeas');
      expect(fake.generateContentPayloads, [
        const {'type': 'contentIdeas'},
      ]);
    });

    test('returns the stubbed response for profile-audit', () async {
      final fake = FakeSupabaseAiClient(
        profileAuditResponse: {'score': 70},
      );

      final result = await fake.invokeProfileAudit(
        payload: const {'bio': 'hello'},
      );

      expect(result, {'score': 70});
    });

    test('returns the stubbed response for usage-status', () async {
      final fake = FakeSupabaseAiClient(
        usageStatusResponse: {'remaining': 5},
      );

      final result = await fake.invokeUsageStatus();

      expect(result, {'remaining': 5});
      expect(fake.usageStatusCalls, 1);
    });

    test('throws the configured failure on generate-content', () async {
      final fake = FakeSupabaseAiClient(
        generateContentFailure: RateLimitedSupabaseAiFailure.test(),
      );

      await expectLater(
        fake.invokeGenerateContent(payload: const {}),
        throwsA(isA<RateLimitedSupabaseAiFailure>()),
      );
    });

    test('throws the configured failure on profile-audit', () async {
      final fake = FakeSupabaseAiClient(
        profileAuditFailure: UnauthorizedSupabaseAiFailure.test(),
      );

      await expectLater(
        fake.invokeProfileAudit(payload: const {}),
        throwsA(isA<UnauthorizedSupabaseAiFailure>()),
      );
    });

    test('throws the configured failure on usage-status', () async {
      final fake = FakeSupabaseAiClient(
        usageStatusFailure: ServerSupabaseAiFailure.test(),
      );

      await expectLater(
        fake.invokeUsageStatus(),
        throwsA(isA<ServerSupabaseAiFailure>()),
      );
    });
  });
}
