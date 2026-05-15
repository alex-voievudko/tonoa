// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_entitlement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageEntitlement _$UsageEntitlementFromJson(
  Map<String, dynamic> json,
) => _UsageEntitlement(
  userId: json['userId'] as String,
  monthlyGenerationLimit: (json['monthlyGenerationLimit'] as num).toInt(),
  monthlyGenerationCount: (json['monthlyGenerationCount'] as num).toInt(),
  monthlyWeeklyPlanLimit: (json['monthlyWeeklyPlanLimit'] as num).toInt(),
  monthlyWeeklyPlanCount: (json['monthlyWeeklyPlanCount'] as num).toInt(),
  monthlyProfileAuditLimit: (json['monthlyProfileAuditLimit'] as num).toInt(),
  monthlyProfileAuditCount: (json['monthlyProfileAuditCount'] as num).toInt(),
  isPro: json['isPro'] as bool,
  periodStart: DateTime.parse(json['periodStart'] as String),
  periodEnd: DateTime.parse(json['periodEnd'] as String),
);

Map<String, dynamic> _$UsageEntitlementToJson(_UsageEntitlement instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'monthlyGenerationLimit': instance.monthlyGenerationLimit,
      'monthlyGenerationCount': instance.monthlyGenerationCount,
      'monthlyWeeklyPlanLimit': instance.monthlyWeeklyPlanLimit,
      'monthlyWeeklyPlanCount': instance.monthlyWeeklyPlanCount,
      'monthlyProfileAuditLimit': instance.monthlyProfileAuditLimit,
      'monthlyProfileAuditCount': instance.monthlyProfileAuditCount,
      'isPro': instance.isPro,
      'periodStart': instance.periodStart.toIso8601String(),
      'periodEnd': instance.periodEnd.toIso8601String(),
    };
