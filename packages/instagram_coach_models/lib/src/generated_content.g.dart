// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneratedContent _$GeneratedContentFromJson(Map<String, dynamic> json) =>
    _GeneratedContent(
      id: json['id'] as String,
      userId: json['userId'] as String,
      brandProfileId: json['brandProfileId'] as String,
      type: $enumDecode(_$GenerationTypeEnumMap, json['type']),
      promptInput: json['promptInput'] as Map<String, dynamic>,
      result: AiGenerationResult.fromJson(
        json['result'] as Map<String, dynamic>,
      ),
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      tone: (json['tone'] as List<dynamic>)
          .map((e) => $enumDecode(_$BrandToneEnumMap, e))
          .toList(),
      isSaved: json['isSaved'] as bool,
      status: $enumDecode(_$ContentStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ideaId: json['ideaId'] as String?,
    );

Map<String, dynamic> _$GeneratedContentToJson(_GeneratedContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'brandProfileId': instance.brandProfileId,
      'type': _$GenerationTypeEnumMap[instance.type]!,
      'promptInput': instance.promptInput,
      'result': instance.result.toJson(),
      'language': _$ContentLanguageEnumMap[instance.language]!,
      'tone': instance.tone.map((e) => _$BrandToneEnumMap[e]!).toList(),
      'isSaved': instance.isSaved,
      'status': _$ContentStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'ideaId': ?instance.ideaId,
    };

const _$GenerationTypeEnumMap = {
  GenerationType.contentIdeas: 'contentIdeas',
  GenerationType.caption: 'caption',
  GenerationType.reelScript: 'reelScript',
  GenerationType.weeklyPlan: 'weeklyPlan',
  GenerationType.profileAudit: 'profileAudit',
};

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.spanish: 'spanish',
  ContentLanguage.ukrainian: 'ukrainian',
  ContentLanguage.russian: 'russian',
  ContentLanguage.other: 'other',
};

const _$BrandToneEnumMap = {
  BrandTone.friendly: 'friendly',
  BrandTone.professional: 'professional',
  BrandTone.funny: 'funny',
  BrandTone.luxury: 'luxury',
  BrandTone.bold: 'bold',
  BrandTone.educational: 'educational',
  BrandTone.personal: 'personal',
};

const _$ContentStatusEnumMap = {
  ContentStatus.idea: 'idea',
  ContentStatus.draft: 'draft',
  ContentStatus.readyToPost: 'readyToPost',
  ContentStatus.posted: 'posted',
};
