import 'package:supabase_ai_client/src/supabase_ai_failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAiClient {
  SupabaseAiClient({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  static const _generateContent = 'generate-content';
  static const _profileAudit = 'profile-audit';
  static const _usageStatus = 'usage-status';

  final SupabaseClient _supabaseClient;

  Future<Map<String, dynamic>> invokeGenerateContent({
    required Map<String, dynamic> payload,
  }) => _invoke(_generateContent, payload);

  Future<Map<String, dynamic>> invokeProfileAudit({
    required Map<String, dynamic> payload,
  }) => _invoke(_profileAudit, payload);

  Future<Map<String, dynamic>> invokeUsageStatus() =>
      _invoke(_usageStatus, const {});

  Future<Map<String, dynamic>> _invoke(
    String function,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _supabaseClient.functions.invoke(
        function,
        body: body,
      );
      final data = response.data;
      if (data is! Map<String, dynamic>) {
        throw ServerSupabaseAiFailure(
          FunctionException(status: response.status),
          StackTrace.current,
        );
      }
      return data;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        SupabaseAiFailure.fromError(error, stackTrace),
        stackTrace,
      );
    }
  }
}
