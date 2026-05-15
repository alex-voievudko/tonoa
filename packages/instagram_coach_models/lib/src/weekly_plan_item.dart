import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/brand_profile.dart';
import 'package:instagram_coach_models/src/content_idea.dart';

part 'weekly_plan_item.freezed.dart';
part 'weekly_plan_item.g.dart';

@freezed
abstract class WeeklyPlanItem with _$WeeklyPlanItem {
  const factory WeeklyPlanItem({
    required String id,
    required String weeklyPlanId,
    required DateTime scheduledFor,
    required ContentType contentType,
    required String topic,
    required InstagramGoal goal,
    required String cta,
    required ContentStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeIfNull: false) String? generatedContentId,
  }) = _WeeklyPlanItem;

  factory WeeklyPlanItem.fromJson(Map<String, dynamic> json) =>
      _$WeeklyPlanItemFromJson(json);
}
