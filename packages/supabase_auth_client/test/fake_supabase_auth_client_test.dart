import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_auth_client/supabase_auth_client.dart';

void main() {
  group('FakeSupabaseAuthClient', () {
    test('records sendEmailOtp invocations', () async {
      final fake = FakeSupabaseAuthClient();

      await fake.sendEmailOtp(email: 'user@example.com');

      expect(fake.sentOtpEmails, ['user@example.com']);
    });

    test('verifyEmailOtp transitions to authenticated state', () async {
      final fake = FakeSupabaseAuthClient(userIdToReturnOnVerify: 'user-1');

      await fake.verifyEmailOtp(
        email: 'user@example.com',
        token: '123456',
      );

      expect(fake.currentUserId, 'user-1');
    });

    test(
      'signOut clears current user and emits unauthenticated state',
      () async {
        final fake = FakeSupabaseAuthClient(userIdToReturnOnVerify: 'user-1')
          ..signInForTest('user-1');

        final emitted = <SupabaseAuthSessionState>[];
        final subscription = fake.sessionChanges.listen(emitted.add);
        addTearDown(subscription.cancel);

        await fake.signOut();
        await Future<void>.delayed(Duration.zero);

        expect(fake.currentUserId, isNull);
        expect(emitted.last.isAuthenticated, isFalse);
      },
    );

    test('can be configured to throw a failure on sendEmailOtp', () async {
      final fake = FakeSupabaseAuthClient(
        sendEmailOtpFailure: RateLimitedSupabaseAuthFailure.test(),
      );

      await expectLater(
        fake.sendEmailOtp(email: 'user@example.com'),
        throwsA(isA<RateLimitedSupabaseAuthFailure>()),
      );
    });
  });
}
