import 'package:supabase_auth_client/src/supabase_auth_failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthClient {
  SupabaseAuthClient({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  GoTrueClient get _auth => _supabaseClient.auth;

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
}
