import 'package:supabase_ai_client/src/supabase_ai_client.dart';
import 'package:supabase_ai_client/src/supabase_ai_failure.dart';

class FakeSupabaseAiClient implements SupabaseAiClient {
  FakeSupabaseAiClient({
    this.generateContentResponse,
    this.profileAuditResponse,
    this.usageStatusResponse,
    this.generateContentFailure,
    this.profileAuditFailure,
    this.usageStatusFailure,
  });

  final Map<String, dynamic>? generateContentResponse;
  final Map<String, dynamic>? profileAuditResponse;
  final Map<String, dynamic>? usageStatusResponse;
  final SupabaseAiFailure? generateContentFailure;
  final SupabaseAiFailure? profileAuditFailure;
  final SupabaseAiFailure? usageStatusFailure;

  final generateContentPayloads = <Map<String, dynamic>>[];
  final profileAuditPayloads = <Map<String, dynamic>>[];
  int usageStatusCalls = 0;

  @override
  Future<Map<String, dynamic>> invokeGenerateContent({
    required Map<String, dynamic> payload,
  }) async {
    generateContentPayloads.add(Map<String, dynamic>.from(payload));
    if (generateContentFailure != null) throw generateContentFailure!;
    return Map<String, dynamic>.from(
      generateContentResponse ?? const <String, dynamic>{},
    );
  }

  @override
  Future<Map<String, dynamic>> invokeProfileAudit({
    required Map<String, dynamic> payload,
  }) async {
    profileAuditPayloads.add(Map<String, dynamic>.from(payload));
    if (profileAuditFailure != null) throw profileAuditFailure!;
    return Map<String, dynamic>.from(
      profileAuditResponse ?? const <String, dynamic>{},
    );
  }

  @override
  Future<Map<String, dynamic>> invokeUsageStatus() async {
    usageStatusCalls += 1;
    if (usageStatusFailure != null) throw usageStatusFailure!;
    return Map<String, dynamic>.from(
      usageStatusResponse ?? const <String, dynamic>{},
    );
  }
}
