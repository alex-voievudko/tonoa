// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_idea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentIdea _$ContentIdeaFromJson(Map<String, dynamic> json) => _ContentIdea(
  id: json['id'] as String,
  userId: json['userId'] as String,
  brandProfileId: json['brandProfileId'] as String,
  title: json['title'] as String,
  format: $enumDecode(_$ContentTypeEnumMap, json['format']),
  goal: $enumDecode(_$InstagramGoalEnumMap, json['goal']),
  description: json['description'] as String,
  whyItWorks: json['whyItWorks'] as String,
  status: $enumDecode(_$ContentStatusEnumMap, json['status']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ContentIdeaToJson(_ContentIdea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'brandProfileId': instance.brandProfileId,
      'title': instance.title,
      'format': _$ContentTypeEnumMap[instance.format]!,
      'goal': _$InstagramGoalEnumMap[instance.goal]!,
      'description': instance.description,
      'whyItWorks': instance.whyItWorks,
      'status': _$ContentStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ContentTypeEnumMap = {
  ContentType.reel: 'reel',
  ContentType.carousel: 'carousel',
  ContentType.story: 'story',
  ContentType.staticPost: 'staticPost',
  ContentType.mixed: 'mixed',
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

const _$ContentStatusEnumMap = {
  ContentStatus.idea: 'idea',
  ContentStatus.draft: 'draft',
  ContentStatus.readyToPost: 'readyToPost',
  ContentStatus.posted: 'posted',
};
