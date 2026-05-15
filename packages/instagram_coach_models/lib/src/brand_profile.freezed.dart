// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandProfile {

 String get id; String get userId; String get businessName; AccountType get accountType; Niche get niche; String get audience; String get offerDescription; List<InstagramGoal> get goals; List<BrandTone> get tone; ContentLanguage get language; PostingFrequency get postingFrequency; DateTime get createdAt; DateTime get updatedAt; String? get location; String? get instagramHandle; String? get notes;
/// Create a copy of BrandProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandProfileCopyWith<BrandProfile> get copyWith => _$BrandProfileCopyWithImpl<BrandProfile>(this as BrandProfile, _$identity);

  /// Serializes this BrandProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.niche, niche) || other.niche == niche)&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.offerDescription, offerDescription) || other.offerDescription == offerDescription)&&const DeepCollectionEquality().equals(other.goals, goals)&&const DeepCollectionEquality().equals(other.tone, tone)&&(identical(other.language, language) || other.language == language)&&(identical(other.postingFrequency, postingFrequency) || other.postingFrequency == postingFrequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.location, location) || other.location == location)&&(identical(other.instagramHandle, instagramHandle) || other.instagramHandle == instagramHandle)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,businessName,accountType,niche,audience,offerDescription,const DeepCollectionEquality().hash(goals),const DeepCollectionEquality().hash(tone),language,postingFrequency,createdAt,updatedAt,location,instagramHandle,notes);

@override
String toString() {
  return 'BrandProfile(id: $id, userId: $userId, businessName: $businessName, accountType: $accountType, niche: $niche, audience: $audience, offerDescription: $offerDescription, goals: $goals, tone: $tone, language: $language, postingFrequency: $postingFrequency, createdAt: $createdAt, updatedAt: $updatedAt, location: $location, instagramHandle: $instagramHandle, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $BrandProfileCopyWith<$Res>  {
  factory $BrandProfileCopyWith(BrandProfile value, $Res Function(BrandProfile) _then) = _$BrandProfileCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String businessName, AccountType accountType, Niche niche, String audience, String offerDescription, List<InstagramGoal> goals, List<BrandTone> tone, ContentLanguage language, PostingFrequency postingFrequency, DateTime createdAt, DateTime updatedAt, String? location, String? instagramHandle, String? notes
});




}
/// @nodoc
class _$BrandProfileCopyWithImpl<$Res>
    implements $BrandProfileCopyWith<$Res> {
  _$BrandProfileCopyWithImpl(this._self, this._then);

  final BrandProfile _self;
  final $Res Function(BrandProfile) _then;

/// Create a copy of BrandProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? businessName = null,Object? accountType = null,Object? niche = null,Object? audience = null,Object? offerDescription = null,Object? goals = null,Object? tone = null,Object? language = null,Object? postingFrequency = null,Object? createdAt = null,Object? updatedAt = null,Object? location = freezed,Object? instagramHandle = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountType,niche: null == niche ? _self.niche : niche // ignore: cast_nullable_to_non_nullable
as Niche,audience: null == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as String,offerDescription: null == offerDescription ? _self.offerDescription : offerDescription // ignore: cast_nullable_to_non_nullable
as String,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<InstagramGoal>,tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,postingFrequency: null == postingFrequency ? _self.postingFrequency : postingFrequency // ignore: cast_nullable_to_non_nullable
as PostingFrequency,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,instagramHandle: freezed == instagramHandle ? _self.instagramHandle : instagramHandle // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandProfile].
extension BrandProfilePatterns on BrandProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandProfile value)  $default,){
final _that = this;
switch (_that) {
case _BrandProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandProfile value)?  $default,){
final _that = this;
switch (_that) {
case _BrandProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String businessName,  AccountType accountType,  Niche niche,  String audience,  String offerDescription,  List<InstagramGoal> goals,  List<BrandTone> tone,  ContentLanguage language,  PostingFrequency postingFrequency,  DateTime createdAt,  DateTime updatedAt,  String? location,  String? instagramHandle,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandProfile() when $default != null:
return $default(_that.id,_that.userId,_that.businessName,_that.accountType,_that.niche,_that.audience,_that.offerDescription,_that.goals,_that.tone,_that.language,_that.postingFrequency,_that.createdAt,_that.updatedAt,_that.location,_that.instagramHandle,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String businessName,  AccountType accountType,  Niche niche,  String audience,  String offerDescription,  List<InstagramGoal> goals,  List<BrandTone> tone,  ContentLanguage language,  PostingFrequency postingFrequency,  DateTime createdAt,  DateTime updatedAt,  String? location,  String? instagramHandle,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _BrandProfile():
return $default(_that.id,_that.userId,_that.businessName,_that.accountType,_that.niche,_that.audience,_that.offerDescription,_that.goals,_that.tone,_that.language,_that.postingFrequency,_that.createdAt,_that.updatedAt,_that.location,_that.instagramHandle,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String businessName,  AccountType accountType,  Niche niche,  String audience,  String offerDescription,  List<InstagramGoal> goals,  List<BrandTone> tone,  ContentLanguage language,  PostingFrequency postingFrequency,  DateTime createdAt,  DateTime updatedAt,  String? location,  String? instagramHandle,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _BrandProfile() when $default != null:
return $default(_that.id,_that.userId,_that.businessName,_that.accountType,_that.niche,_that.audience,_that.offerDescription,_that.goals,_that.tone,_that.language,_that.postingFrequency,_that.createdAt,_that.updatedAt,_that.location,_that.instagramHandle,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandProfile implements BrandProfile {
  const _BrandProfile({required this.id, required this.userId, required this.businessName, required this.accountType, required this.niche, required this.audience, required this.offerDescription, required final  List<InstagramGoal> goals, required final  List<BrandTone> tone, required this.language, required this.postingFrequency, required this.createdAt, required this.updatedAt, this.location, this.instagramHandle, this.notes}): _goals = goals,_tone = tone;
  factory _BrandProfile.fromJson(Map<String, dynamic> json) => _$BrandProfileFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String businessName;
@override final  AccountType accountType;
@override final  Niche niche;
@override final  String audience;
@override final  String offerDescription;
 final  List<InstagramGoal> _goals;
@override List<InstagramGoal> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}

 final  List<BrandTone> _tone;
@override List<BrandTone> get tone {
  if (_tone is EqualUnmodifiableListView) return _tone;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tone);
}

@override final  ContentLanguage language;
@override final  PostingFrequency postingFrequency;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? location;
@override final  String? instagramHandle;
@override final  String? notes;

/// Create a copy of BrandProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandProfileCopyWith<_BrandProfile> get copyWith => __$BrandProfileCopyWithImpl<_BrandProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.niche, niche) || other.niche == niche)&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.offerDescription, offerDescription) || other.offerDescription == offerDescription)&&const DeepCollectionEquality().equals(other._goals, _goals)&&const DeepCollectionEquality().equals(other._tone, _tone)&&(identical(other.language, language) || other.language == language)&&(identical(other.postingFrequency, postingFrequency) || other.postingFrequency == postingFrequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.location, location) || other.location == location)&&(identical(other.instagramHandle, instagramHandle) || other.instagramHandle == instagramHandle)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,businessName,accountType,niche,audience,offerDescription,const DeepCollectionEquality().hash(_goals),const DeepCollectionEquality().hash(_tone),language,postingFrequency,createdAt,updatedAt,location,instagramHandle,notes);

@override
String toString() {
  return 'BrandProfile(id: $id, userId: $userId, businessName: $businessName, accountType: $accountType, niche: $niche, audience: $audience, offerDescription: $offerDescription, goals: $goals, tone: $tone, language: $language, postingFrequency: $postingFrequency, createdAt: $createdAt, updatedAt: $updatedAt, location: $location, instagramHandle: $instagramHandle, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$BrandProfileCopyWith<$Res> implements $BrandProfileCopyWith<$Res> {
  factory _$BrandProfileCopyWith(_BrandProfile value, $Res Function(_BrandProfile) _then) = __$BrandProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String businessName, AccountType accountType, Niche niche, String audience, String offerDescription, List<InstagramGoal> goals, List<BrandTone> tone, ContentLanguage language, PostingFrequency postingFrequency, DateTime createdAt, DateTime updatedAt, String? location, String? instagramHandle, String? notes
});




}
/// @nodoc
class __$BrandProfileCopyWithImpl<$Res>
    implements _$BrandProfileCopyWith<$Res> {
  __$BrandProfileCopyWithImpl(this._self, this._then);

  final _BrandProfile _self;
  final $Res Function(_BrandProfile) _then;

/// Create a copy of BrandProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? businessName = null,Object? accountType = null,Object? niche = null,Object? audience = null,Object? offerDescription = null,Object? goals = null,Object? tone = null,Object? language = null,Object? postingFrequency = null,Object? createdAt = null,Object? updatedAt = null,Object? location = freezed,Object? instagramHandle = freezed,Object? notes = freezed,}) {
  return _then(_BrandProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountType,niche: null == niche ? _self.niche : niche // ignore: cast_nullable_to_non_nullable
as Niche,audience: null == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as String,offerDescription: null == offerDescription ? _self.offerDescription : offerDescription // ignore: cast_nullable_to_non_nullable
as String,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<InstagramGoal>,tone: null == tone ? _self._tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,postingFrequency: null == postingFrequency ? _self.postingFrequency : postingFrequency // ignore: cast_nullable_to_non_nullable
as PostingFrequency,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,instagramHandle: freezed == instagramHandle ? _self.instagramHandle : instagramHandle // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
