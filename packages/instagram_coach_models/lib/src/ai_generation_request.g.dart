// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_generation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiGenerationRequest _$AiGenerationRequestFromJson(Map<String, dynamic> json) =>
    _AiGenerationRequest(
      brandProfileId: json['brandProfileId'] as String,
      type: $enumDecode(_$GenerationTypeEnumMap, json['type']),
      goal: $enumDecode(_$InstagramGoalEnumMap, json['goal']),
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      tone: (json['tone'] as List<dynamic>)
          .map((e) => $enumDecode(_$BrandToneEnumMap, e))
          .toList(),
      constraints: json['constraints'] as Map<String, dynamic>,
      input: json['input'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$AiGenerationRequestToJson(
  _AiGenerationRequest instance,
) => <String, dynamic>{
  'brandProfileId': instance.brandProfileId,
  'type': _$GenerationTypeEnumMap[instance.type]!,
  'goal': _$InstagramGoalEnumMap[instance.goal]!,
  'language': _$ContentLanguageEnumMap[instance.language]!,
  'tone': instance.tone.map((e) => _$BrandToneEnumMap[e]!).toList(),
  'constraints': instance.constraints,
  'input': instance.input,
};

const _$GenerationTypeEnumMap = {
  GenerationType.contentIdeas: 'contentIdeas',
  GenerationType.caption: 'caption',
  GenerationType.reelScript: 'reelScript',
  GenerationType.weeklyPlan: 'weeklyPlan',
  GenerationType.profileAudit: 'profileAudit',
};

const _$InstagramGoalEnumMap = {
  InstagramGoal.getMoreFollowers: 'getMoreFollowers',
  InstagramGoal.getMoreClients: 'getMoreClients',
  InstagramGoal.sellProducts: 'sellProducts',
  InstagramGoal.sellServices: 'sellServices',
  InstagramGoal.improveEngagement: 'improveEngagement',
  InstagramGoal.postMoreConsistently: 'postMoreConsistently',
  InstagramGoal.buildPersonalBrand: 'buildPersonalBrand',
  InstagramGoal.educate: 'educate',
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
