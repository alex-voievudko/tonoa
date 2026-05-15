// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_plan_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyPlanItem _$WeeklyPlanItemFromJson(Map<String, dynamic> json) =>
    _WeeklyPlanItem(
      id: json['id'] as String,
      weeklyPlanId: json['weeklyPlanId'] as String,
      scheduledFor: DateTime.parse(json['scheduledFor'] as String),
      contentType: $enumDecode(_$ContentTypeEnumMap, json['contentType']),
      topic: json['topic'] as String,
      goal: $enumDecode(_$InstagramGoalEnumMap, json['goal']),
      cta: json['cta'] as String,
      status: $enumDecode(_$ContentStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      generatedContentId: json['generatedContentId'] as String?,
    );

Map<String, dynamic> _$WeeklyPlanItemToJson(_WeeklyPlanItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weeklyPlanId': instance.weeklyPlanId,
      'scheduledFor': instance.scheduledFor.toIso8601String(),
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'topic': instance.topic,
      'goal': _$InstagramGoalEnumMap[instance.goal]!,
      'cta': instance.cta,
      'status': _$ContentStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'generatedContentId': ?instance.generatedContentId,
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
