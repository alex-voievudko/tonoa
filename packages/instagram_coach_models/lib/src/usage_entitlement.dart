import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_entitlement.freezed.dart';
part 'usage_entitlement.g.dart';

@freezed
abstract class UsageEntitlement with _$UsageEntitlement {
  const factory UsageEntitlement({
    required String userId,
    required int monthlyGenerationLimit,
    required int monthlyGenerationCount,
    required int monthlyWeeklyPlanLimit,
    required int monthlyWeeklyPlanCount,
    required int monthlyProfileAuditLimit,
    required int monthlyProfileAuditCount,
    required bool isPro,
    required DateTime periodStart,
    required DateTime periodEnd,
  }) = _UsageEntitlement;

  factory UsageEntitlement.fromJson(Map<String, dynamic> json) =>
      _$UsageEntitlementFromJson(json);
}
