import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/brand_profile.dart';

part 'ai_generation_request.freezed.dart';
part 'ai_generation_request.g.dart';

enum GenerationType {
  contentIdeas,
  caption,
  reelScript,
  weeklyPlan,
  profileAudit,
}

@freezed
abstract class AiGenerationRequest with _$AiGenerationRequest {
  const factory AiGenerationRequest({
    required String brandProfileId,
    required GenerationType type,
    required InstagramGoal goal,
    required ContentLanguage language,
    required List<BrandTone> tone,
    required Map<String, dynamic> constraints,
    required Map<String, dynamic> input,
  }) = _AiGenerationRequest;

  factory AiGenerationRequest.fromJson(Map<String, dynamic> json) =>
      _$AiGenerationRequestFromJson(json);
}
