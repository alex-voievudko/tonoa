// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_audit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileAudit {

 String get id; String get userId; String get brandProfileId; int get score; Map<String, dynamic> get feedback; String get suggestedBio; List<String> get fixes; DateTime get createdAt; String get inputBio; List<String> get inputHighlights; List<String> get inputPinnedPosts;
/// Create a copy of ProfileAudit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileAuditCopyWith<ProfileAudit> get copyWith => _$ProfileAuditCopyWithImpl<ProfileAudit>(this as ProfileAudit, _$identity);

  /// Serializes this ProfileAudit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileAudit&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.feedback, feedback)&&(identical(other.suggestedBio, suggestedBio) || other.suggestedBio == suggestedBio)&&const DeepCollectionEquality().equals(other.fixes, fixes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.inputBio, inputBio) || other.inputBio == inputBio)&&const DeepCollectionEquality().equals(other.inputHighlights, inputHighlights)&&const DeepCollectionEquality().equals(other.inputPinnedPosts, inputPinnedPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,score,const DeepCollectionEquality().hash(feedback),suggestedBio,const DeepCollectionEquality().hash(fixes),createdAt,inputBio,const DeepCollectionEquality().hash(inputHighlights),const DeepCollectionEquality().hash(inputPinnedPosts));

@override
String toString() {
  return 'ProfileAudit(id: $id, userId: $userId, brandProfileId: $brandProfileId, score: $score, feedback: $feedback, suggestedBio: $suggestedBio, fixes: $fixes, createdAt: $createdAt, inputBio: $inputBio, inputHighlights: $inputHighlights, inputPinnedPosts: $inputPinnedPosts)';
}


}

/// @nodoc
abstract mixin class $ProfileAuditCopyWith<$Res>  {
  factory $ProfileAuditCopyWith(ProfileAudit value, $Res Function(ProfileAudit) _then) = _$ProfileAuditCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String brandProfileId, int score, Map<String, dynamic> feedback, String suggestedBio, List<String> fixes, DateTime createdAt, String inputBio, List<String> inputHighlights, List<String> inputPinnedPosts
});




}
/// @nodoc
class _$ProfileAuditCopyWithImpl<$Res>
    implements $ProfileAuditCopyWith<$Res> {
  _$ProfileAuditCopyWithImpl(this._self, this._then);

  final ProfileAudit _self;
  final $Res Function(ProfileAudit) _then;

/// Create a copy of ProfileAudit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? score = null,Object? feedback = null,Object? suggestedBio = null,Object? fixes = null,Object? createdAt = null,Object? inputBio = null,Object? inputHighlights = null,Object? inputPinnedPosts = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,suggestedBio: null == suggestedBio ? _self.suggestedBio : suggestedBio // ignore: cast_nullable_to_non_nullable
as String,fixes: null == fixes ? _self.fixes : fixes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,inputBio: null == inputBio ? _self.inputBio : inputBio // ignore: cast_nullable_to_non_nullable
as String,inputHighlights: null == inputHighlights ? _self.inputHighlights : inputHighlights // ignore: cast_nullable_to_non_nullable
as List<String>,inputPinnedPosts: null == inputPinnedPosts ? _self.inputPinnedPosts : inputPinnedPosts // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileAudit].
extension ProfileAuditPatterns on ProfileAudit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileAudit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileAudit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileAudit value)  $default,){
final _that = this;
switch (_that) {
case _ProfileAudit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileAudit value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileAudit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  int score,  Map<String, dynamic> feedback,  String suggestedBio,  List<String> fixes,  DateTime createdAt,  String inputBio,  List<String> inputHighlights,  List<String> inputPinnedPosts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileAudit() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.score,_that.feedback,_that.suggestedBio,_that.fixes,_that.createdAt,_that.inputBio,_that.inputHighlights,_that.inputPinnedPosts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  int score,  Map<String, dynamic> feedback,  String suggestedBio,  List<String> fixes,  DateTime createdAt,  String inputBio,  List<String> inputHighlights,  List<String> inputPinnedPosts)  $default,) {final _that = this;
switch (_that) {
case _ProfileAudit():
return $default(_that.id,_that.userId,_that.brandProfileId,_that.score,_that.feedback,_that.suggestedBio,_that.fixes,_that.createdAt,_that.inputBio,_that.inputHighlights,_that.inputPinnedPosts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String brandProfileId,  int score,  Map<String, dynamic> feedback,  String suggestedBio,  List<String> fixes,  DateTime createdAt,  String inputBio,  List<String> inputHighlights,  List<String> inputPinnedPosts)?  $default,) {final _that = this;
switch (_that) {
case _ProfileAudit() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.score,_that.feedback,_that.suggestedBio,_that.fixes,_that.createdAt,_that.inputBio,_that.inputHighlights,_that.inputPinnedPosts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileAudit implements ProfileAudit {
  const _ProfileAudit({required this.id, required this.userId, required this.brandProfileId, required this.score, required final  Map<String, dynamic> feedback, required this.suggestedBio, required final  List<String> fixes, required this.createdAt, required this.inputBio, required final  List<String> inputHighlights, required final  List<String> inputPinnedPosts}): _feedback = feedback,_fixes = fixes,_inputHighlights = inputHighlights,_inputPinnedPosts = inputPinnedPosts;
  factory _ProfileAudit.fromJson(Map<String, dynamic> json) => _$ProfileAuditFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String brandProfileId;
@override final  int score;
 final  Map<String, dynamic> _feedback;
@override Map<String, dynamic> get feedback {
  if (_feedback is EqualUnmodifiableMapView) return _feedback;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_feedback);
}

@override final  String suggestedBio;
 final  List<String> _fixes;
@override List<String> get fixes {
  if (_fixes is EqualUnmodifiableListView) return _fixes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fixes);
}

@override final  DateTime createdAt;
@override final  String inputBio;
 final  List<String> _inputHighlights;
@override List<String> get inputHighlights {
  if (_inputHighlights is EqualUnmodifiableListView) return _inputHighlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputHighlights);
}

 final  List<String> _inputPinnedPosts;
@override List<String> get inputPinnedPosts {
  if (_inputPinnedPosts is EqualUnmodifiableListView) return _inputPinnedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputPinnedPosts);
}


/// Create a copy of ProfileAudit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileAuditCopyWith<_ProfileAudit> get copyWith => __$ProfileAuditCopyWithImpl<_ProfileAudit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileAuditToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileAudit&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._feedback, _feedback)&&(identical(other.suggestedBio, suggestedBio) || other.suggestedBio == suggestedBio)&&const DeepCollectionEquality().equals(other._fixes, _fixes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.inputBio, inputBio) || other.inputBio == inputBio)&&const DeepCollectionEquality().equals(other._inputHighlights, _inputHighlights)&&const DeepCollectionEquality().equals(other._inputPinnedPosts, _inputPinnedPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,score,const DeepCollectionEquality().hash(_feedback),suggestedBio,const DeepCollectionEquality().hash(_fixes),createdAt,inputBio,const DeepCollectionEquality().hash(_inputHighlights),const DeepCollectionEquality().hash(_inputPinnedPosts));

@override
String toString() {
  return 'ProfileAudit(id: $id, userId: $userId, brandProfileId: $brandProfileId, score: $score, feedback: $feedback, suggestedBio: $suggestedBio, fixes: $fixes, createdAt: $createdAt, inputBio: $inputBio, inputHighlights: $inputHighlights, inputPinnedPosts: $inputPinnedPosts)';
}


}

/// @nodoc
abstract mixin class _$ProfileAuditCopyWith<$Res> implements $ProfileAuditCopyWith<$Res> {
  factory _$ProfileAuditCopyWith(_ProfileAudit value, $Res Function(_ProfileAudit) _then) = __$ProfileAuditCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String brandProfileId, int score, Map<String, dynamic> feedback, String suggestedBio, List<String> fixes, DateTime createdAt, String inputBio, List<String> inputHighlights, List<String> inputPinnedPosts
});




}
/// @nodoc
class __$ProfileAuditCopyWithImpl<$Res>
    implements _$ProfileAuditCopyWith<$Res> {
  __$ProfileAuditCopyWithImpl(this._self, this._then);

  final _ProfileAudit _self;
  final $Res Function(_ProfileAudit) _then;

/// Create a copy of ProfileAudit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? score = null,Object? feedback = null,Object? suggestedBio = null,Object? fixes = null,Object? createdAt = null,Object? inputBio = null,Object? inputHighlights = null,Object? inputPinnedPosts = null,}) {
  return _then(_ProfileAudit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self._feedback : feedback // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,suggestedBio: null == suggestedBio ? _self.suggestedBio : suggestedBio // ignore: cast_nullable_to_non_nullable
as String,fixes: null == fixes ? _self._fixes : fixes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,inputBio: null == inputBio ? _self.inputBio : inputBio // ignore: cast_nullable_to_non_nullable
as String,inputHighlights: null == inputHighlights ? _self._inputHighlights : inputHighlights // ignore: cast_nullable_to_non_nullable
as List<String>,inputPinnedPosts: null == inputPinnedPosts ? _self._inputPinnedPosts : inputPinnedPosts // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
