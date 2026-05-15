import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/weekly_plan_item.dart';

part 'weekly_plan.freezed.dart';
part 'weekly_plan.g.dart';

@freezed
abstract class WeeklyPlan with _$WeeklyPlan {
  const factory WeeklyPlan({
    required String id,
    required String userId,
    required String brandProfileId,
    required DateTime weekStartDate,
    required String goal,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(<WeeklyPlanItem>[]) List<WeeklyPlanItem> items,
  }) = _WeeklyPlan;

  factory WeeklyPlan.fromJson(Map<String, dynamic> json) =>
      _$WeeklyPlanFromJson(json);
}
