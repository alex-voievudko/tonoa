import 'dart:async';

import 'package:supabase_auth_client/src/supabase_auth_client.dart';
import 'package:supabase_auth_client/src/supabase_auth_failure.dart';

class FakeSupabaseAuthClient implements SupabaseAuthClient {
  FakeSupabaseAuthClient({
    this.userIdToReturnOnVerify,
    this.sendEmailOtpFailure,
    this.verifyEmailOtpFailure,
    this.signOutFailure,
  });

  final String? userIdToReturnOnVerify;
  final SupabaseAuthFailure? sendEmailOtpFailure;
  final SupabaseAuthFailure? verifyEmailOtpFailure;
  final SupabaseAuthFailure? signOutFailure;

  final _controller = StreamController<SupabaseAuthSessionState>.broadcast();
  final sentOtpEmails = <String>[];
  final verifyAttempts = <({String email, String token})>[];

  String? _userId;

  @override
  String? get currentUserId => _userId;

  @override
  Stream<SupabaseAuthSessionState> get sessionChanges => _controller.stream;

  void signInForTest(String userId) {
    _userId = userId;
    _controller.add(SupabaseAuthSessionState(userId: userId));
  }

  @override
  Future<void> sendEmailOtp({required String email}) async {
    sentOtpEmails.add(email);
    if (sendEmailOtpFailure != null) {
      throw sendEmailOtpFailure!;
    }
  }

  @override
  Future<void> verifyEmailOtp({
    required String email,
    required String token,
  }) async {
    verifyAttempts.add((email: email, token: token));
    if (verifyEmailOtpFailure != null) {
      throw verifyEmailOtpFailure!;
    }
    final id = userIdToReturnOnVerify;
    if (id != null) {
      _userId = id;
      _controller.add(SupabaseAuthSessionState(userId: id));
    }
  }

  @override
  Future<void> signOut() async {
    if (signOutFailure != null) {
      throw signOutFailure!;
    }
    _userId = null;
    _controller.add(const SupabaseAuthSessionState.unauthenticated());
  }

  Future<void> dispose() => _controller.close();
}
