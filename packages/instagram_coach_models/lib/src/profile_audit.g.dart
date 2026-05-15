// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_audit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileAudit _$ProfileAuditFromJson(Map<String, dynamic> json) =>
    _ProfileAudit(
      id: json['id'] as String,
      userId: json['userId'] as String,
      brandProfileId: json['brandProfileId'] as String,
      score: (json['score'] as num).toInt(),
      feedback: json['feedback'] as Map<String, dynamic>,
      suggestedBio: json['suggestedBio'] as String,
      fixes: (json['fixes'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      inputBio: json['inputBio'] as String,
      inputHighlights: (json['inputHighlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      inputPinnedPosts: (json['inputPinnedPosts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProfileAuditToJson(_ProfileAudit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'brandProfileId': instance.brandProfileId,
      'score': instance.score,
      'feedback': instance.feedback,
      'suggestedBio': instance.suggestedBio,
      'fixes': instance.fixes,
      'createdAt': instance.createdAt.toIso8601String(),
      'inputBio': instance.inputBio,
      'inputHighlights': instance.inputHighlights,
      'inputPinnedPosts': instance.inputPinnedPosts,
    };
