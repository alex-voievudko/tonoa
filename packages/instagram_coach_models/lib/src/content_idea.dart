import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_coach_models/src/brand_profile.dart';

part 'content_idea.freezed.dart';
part 'content_idea.g.dart';

enum ContentType { reel, carousel, story, staticPost, mixed }

enum ContentStatus { idea, draft, readyToPost, posted }

@freezed
abstract class ContentIdea with _$ContentIdea {
  const factory ContentIdea({
    required String id,
    required String userId,
    required String brandProfileId,
    required String title,
    required ContentType format,
    required InstagramGoal goal,
    required String description,
    required String whyItWorks,
    required ContentStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ContentIdea;

  factory ContentIdea.fromJson(Map<String, dynamic> json) =>
      _$ContentIdeaFromJson(json);
}
