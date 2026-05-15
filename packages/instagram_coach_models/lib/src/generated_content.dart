import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/ai_generation_request.dart';
import 'package:instagram_coach_models/src/ai_generation_result.dart';
import 'package:instagram_coach_models/src/brand_profile.dart';
import 'package:instagram_coach_models/src/content_idea.dart';

part 'generated_content.freezed.dart';
part 'generated_content.g.dart';

@freezed
abstract class GeneratedContent with _$GeneratedContent {
  const factory GeneratedContent({
    required String id,
    required String userId,
    required String brandProfileId,
    required GenerationType type,
    required Map<String, dynamic> promptInput,
    required AiGenerationResult result,
    required ContentLanguage language,
    required List<BrandTone> tone,
    required bool isSaved,
    required ContentStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeIfNull: false) String? ideaId,
  }) = _GeneratedContent;

  factory GeneratedContent.fromJson(Map<String, dynamic> json) =>
      _$GeneratedContentFromJson(json);
}
