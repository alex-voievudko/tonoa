import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_profile.freezed.dart';
part 'brand_profile.g.dart';

enum AccountType {
  creator,
  localBusiness,
  onlineBusiness,
  freelancer,
  other,
}

enum Niche {
  tattooArtist,
  beauty,
  fitness,
  food,
  fashion,
  photography,
  coaching,
  handmadeProducts,
  other,
}

enum InstagramGoal {
  getMoreFollowers,
  getMoreClients,
  sellProducts,
  sellServices,
  improveEngagement,
  postMoreConsistently,
  buildPersonalBrand,
  educate,
}

enum BrandTone {
  friendly,
  professional,
  funny,
  luxury,
  bold,
  educational,
  personal,
}

enum ContentLanguage { english, spanish, ukrainian, russian, other }

enum PostingFrequency {
  twoTimesPerWeek,
  threeTimesPerWeek,
  fiveTimesPerWeek,
  daily,
}

@freezed
abstract class BrandProfile with _$BrandProfile {
  const factory BrandProfile({
    required String id,
    required String userId,
    required String businessName,
    required AccountType accountType,
    required Niche niche,
    required String audience,
    required String offerDescription,
    required List<InstagramGoal> goals,
    required List<BrandTone> tone,
    required ContentLanguage language,
    required PostingFrequency postingFrequency,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? location,
    String? instagramHandle,
    String? notes,
  }) = _BrandProfile;

  factory BrandProfile.fromJson(Map<String, dynamic> json) =>
      _$BrandProfileFromJson(json);
}
