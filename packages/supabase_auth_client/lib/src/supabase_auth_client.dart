import 'package:meta/meta.dart';
import 'package:supabase_auth_client/src/supabase_auth_failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@immutable
class SupabaseAuthSessionState {
  const SupabaseAuthSessionState({required this.userId});

  const SupabaseAuthSessionState.unauthenticated() : userId = null;

  final String? userId;

  bool get isAuthenticated => userId != null;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupabaseAuthSessionState && other.userId == userId;

  @override
  int get hashCode => userId.hashCode;
}

class SupabaseAuthClient {
  SupabaseAuthClient({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  GoTrueClient get _auth => _supabaseClient.auth;

  String? get currentUserId => _auth.currentUser?.id;

  Stream<SupabaseAuthSessionState> get sessionChanges =>
      _auth.onAuthStateChange.map((state) {
        final userId = state.session?.user.id;
        return userId == null
            ? const SupabaseAuthSessionState.unauthenticated()
            : SupabaseAuthSessionState(userId: userId);
      });

  Future<void> sendEmailOtp({required String email}) async {
    try {
      await _auth.signInWithOtp(email: email, shouldCreateUser: true);
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        SupabaseAuthFailure.fromError(error, stackTrace),
        stackTrace,
      );
    }
  }

  Future<void> verifyEmailOtp({
    required String email,
    required String token,
  }) async {
    try {
      await _auth.verifyOTP(
        email: email,
        token: token,
        type: OtpType.email,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        SupabaseAuthFailure.fromError(error, stackTrace),
        stackTrace,
      );
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        SupabaseAuthFailure.fromError(error, stackTrace),
        stackTrace,
      );
    }
  }
}
