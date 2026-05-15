// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandProfile _$BrandProfileFromJson(Map<String, dynamic> json) =>
    _BrandProfile(
      id: json['id'] as String,
      userId: json['userId'] as String,
      businessName: json['businessName'] as String,
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      niche: $enumDecode(_$NicheEnumMap, json['niche']),
      audience: json['audience'] as String,
      offerDescription: json['offerDescription'] as String,
      goals: (json['goals'] as List<dynamic>)
          .map((e) => $enumDecode(_$InstagramGoalEnumMap, e))
          .toList(),
      tone: (json['tone'] as List<dynamic>)
          .map((e) => $enumDecode(_$BrandToneEnumMap, e))
          .toList(),
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      postingFrequency: $enumDecode(
        _$PostingFrequencyEnumMap,
        json['postingFrequency'],
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      location: json['location'] as String?,
      instagramHandle: json['instagramHandle'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$BrandProfileToJson(_BrandProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'businessName': instance.businessName,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'niche': _$NicheEnumMap[instance.niche]!,
      'audience': instance.audience,
      'offerDescription': instance.offerDescription,
      'goals': instance.goals.map((e) => _$InstagramGoalEnumMap[e]!).toList(),
      'tone': instance.tone.map((e) => _$BrandToneEnumMap[e]!).toList(),
      'language': _$ContentLanguageEnumMap[instance.language]!,
      'postingFrequency': _$PostingFrequencyEnumMap[instance.postingFrequency]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'location': instance.location,
      'instagramHandle': instance.instagramHandle,
      'notes': instance.notes,
    };

const _$AccountTypeEnumMap = {
  AccountType.creator: 'creator',
  AccountType.localBusiness: 'localBusiness',
  AccountType.onlineBusiness: 'onlineBusiness',
  AccountType.freelancer: 'freelancer',
  AccountType.other: 'other',
};

const _$NicheEnumMap = {
  Niche.tattooArtist: 'tattooArtist',
  Niche.beauty: 'beauty',
  Niche.fitness: 'fitness',
  Niche.food: 'food',
  Niche.fashion: 'fashion',
  Niche.photography: 'photography',
  Niche.coaching: 'coaching',
  Niche.handmadeProducts: 'handmadeProducts',
  Niche.other: 'other',
};

const _$InstagramGoalEnumMap = {
  InstagramGoal.getMoreFollowers: 'getMoreFollowers',
  InstagramGoal.getMoreClients: 'getMoreClients',
  InstagramGoal.sellProducts: 'sellProducts',
  InstagramGoal.sellServices: 'sellServices',
  InstagramGoal.improveEngagement: 'improveEngagement',
  InstagramGoal.postMoreConsistently: 'postMoreConsistently',
  InstagramGoal.buildPersonalBrand: 'buildPersonalBrand',
  InstagramGoal.educate: 'educate',
};

const _$BrandToneEnumMap = {
  BrandTone.friendly: 'friendly',
  BrandTone.professional: 'professional',
  BrandTone.funny: 'funny',
  BrandTone.luxury: 'luxury',
  BrandTone.bold: 'bold',
  BrandTone.educational: 'educational',
  BrandTone.personal: 'personal',
};

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.spanish: 'spanish',
  ContentLanguage.ukrainian: 'ukrainian',
  ContentLanguage.russian: 'russian',
  ContentLanguage.other: 'other',
};

const _$PostingFrequencyEnumMap = {
  PostingFrequency.twoTimesPerWeek: 'twoTimesPerWeek',
  PostingFrequency.threeTimesPerWeek: 'threeTimesPerWeek',
  PostingFrequency.fiveTimesPerWeek: 'fiveTimesPerWeek',
  PostingFrequency.daily: 'daily',
};
