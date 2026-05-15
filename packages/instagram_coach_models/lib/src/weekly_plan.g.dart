// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyPlan _$WeeklyPlanFromJson(Map<String, dynamic> json) => _WeeklyPlan(
  id: json['id'] as String,
  userId: json['userId'] as String,
  brandProfileId: json['brandProfileId'] as String,
  weekStartDate: DateTime.parse(json['weekStartDate'] as String),
  goal: json['goal'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => WeeklyPlanItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <WeeklyPlanItem>[],
);

Map<String, dynamic> _$WeeklyPlanToJson(_WeeklyPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'brandProfileId': instance.brandProfileId,
      'weekStartDate': instance.weekStartDate.toIso8601String(),
      'goal': instance.goal,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
