// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_generation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiGenerationResult _$AiGenerationResultFromJson(Map<String, dynamic> json) =>
    _AiGenerationResult(
      type: $enumDecode(_$GenerationTypeEnumMap, json['type']),
      content: json['content'] as Map<String, dynamic>,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      warnings:
          (json['warnings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$AiGenerationResultToJson(_AiGenerationResult instance) =>
    <String, dynamic>{
      'type': _$GenerationTypeEnumMap[instance.type]!,
      'content': instance.content,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'warnings': instance.warnings,
    };

const _$GenerationTypeEnumMap = {
  GenerationType.contentIdeas: 'contentIdeas',
  GenerationType.caption: 'caption',
  GenerationType.reelScript: 'reelScript',
  GenerationType.weeklyPlan: 'weeklyPlan',
  GenerationType.profileAudit: 'profileAudit',
};
