import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/ai_generation_request.dart';

part 'ai_generation_result.freezed.dart';
part 'ai_generation_result.g.dart';

@freezed
abstract class AiGenerationResult with _$AiGenerationResult {
  const factory AiGenerationResult({
    required GenerationType type,
    required Map<String, dynamic> content,
    required DateTime generatedAt,
    @Default(<String>[]) List<String> warnings,
  }) = _AiGenerationResult;

  factory AiGenerationResult.fromJson(Map<String, dynamic> json) =>
      _$AiGenerationResultFromJson(json);
}
