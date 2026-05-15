import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_audit.freezed.dart';
part 'profile_audit.g.dart';

@freezed
abstract class ProfileAudit with _$ProfileAudit {
  const factory ProfileAudit({
    required String id,
    required String userId,
    required String brandProfileId,
    required int score,
    required Map<String, dynamic> feedback,
    required String suggestedBio,
    required List<String> fixes,
    required DateTime createdAt,
    required String inputBio,
    required List<String> inputHighlights,
    required List<String> inputPinnedPosts,
  }) = _ProfileAudit;

  factory ProfileAudit.fromJson(Map<String, dynamic> json) =>
      _$ProfileAuditFromJson(json);
}
