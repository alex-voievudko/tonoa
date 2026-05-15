// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneratedContent {

 String get id; String get userId; String get brandProfileId; GenerationType get type; Map<String, dynamic> get promptInput; AiGenerationResult get result; ContentLanguage get language; List<BrandTone> get tone; bool get isSaved; ContentStatus get status; DateTime get createdAt; DateTime get updatedAt;@JsonKey(includeIfNull: false) String? get ideaId;
/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedContentCopyWith<GeneratedContent> get copyWith => _$GeneratedContentCopyWithImpl<GeneratedContent>(this as GeneratedContent, _$identity);

  /// Serializes this GeneratedContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.promptInput, promptInput)&&(identical(other.result, result) || other.result == result)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.tone, tone)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ideaId, ideaId) || other.ideaId == ideaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,type,const DeepCollectionEquality().hash(promptInput),result,language,const DeepCollectionEquality().hash(tone),isSaved,status,createdAt,updatedAt,ideaId);

@override
String toString() {
  return 'GeneratedContent(id: $id, userId: $userId, brandProfileId: $brandProfileId, type: $type, promptInput: $promptInput, result: $result, language: $language, tone: $tone, isSaved: $isSaved, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ideaId: $ideaId)';
}


}

/// @nodoc
abstract mixin class $GeneratedContentCopyWith<$Res>  {
  factory $GeneratedContentCopyWith(GeneratedContent value, $Res Function(GeneratedContent) _then) = _$GeneratedContentCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String brandProfileId, GenerationType type, Map<String, dynamic> promptInput, AiGenerationResult result, ContentLanguage language, List<BrandTone> tone, bool isSaved, ContentStatus status, DateTime createdAt, DateTime updatedAt,@JsonKey(includeIfNull: false) String? ideaId
});


$AiGenerationResultCopyWith<$Res> get result;

}
/// @nodoc
class _$GeneratedContentCopyWithImpl<$Res>
    implements $GeneratedContentCopyWith<$Res> {
  _$GeneratedContentCopyWithImpl(this._self, this._then);

  final GeneratedContent _self;
  final $Res Function(GeneratedContent) _then;

/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? type = null,Object? promptInput = null,Object? result = null,Object? language = null,Object? tone = null,Object? isSaved = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ideaId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,promptInput: null == promptInput ? _self.promptInput : promptInput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AiGenerationResult,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,ideaId: freezed == ideaId ? _self.ideaId : ideaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiGenerationResultCopyWith<$Res> get result {
  
  return $AiGenerationResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneratedContent].
extension GeneratedContentPatterns on GeneratedContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratedContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratedContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratedContent value)  $default,){
final _that = this;
switch (_that) {
case _GeneratedContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratedContent value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratedContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  GenerationType type,  Map<String, dynamic> promptInput,  AiGenerationResult result,  ContentLanguage language,  List<BrandTone> tone,  bool isSaved,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? ideaId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedContent() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.type,_that.promptInput,_that.result,_that.language,_that.tone,_that.isSaved,_that.status,_that.createdAt,_that.updatedAt,_that.ideaId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  GenerationType type,  Map<String, dynamic> promptInput,  AiGenerationResult result,  ContentLanguage language,  List<BrandTone> tone,  bool isSaved,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? ideaId)  $default,) {final _that = this;
switch (_that) {
case _GeneratedContent():
return $default(_that.id,_that.userId,_that.brandProfileId,_that.type,_that.promptInput,_that.result,_that.language,_that.tone,_that.isSaved,_that.status,_that.createdAt,_that.updatedAt,_that.ideaId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String brandProfileId,  GenerationType type,  Map<String, dynamic> promptInput,  AiGenerationResult result,  ContentLanguage language,  List<BrandTone> tone,  bool isSaved,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? ideaId)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedContent() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.type,_that.promptInput,_that.result,_that.language,_that.tone,_that.isSaved,_that.status,_that.createdAt,_that.updatedAt,_that.ideaId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneratedContent implements GeneratedContent {
  const _GeneratedContent({required this.id, required this.userId, required this.brandProfileId, required this.type, required final  Map<String, dynamic> promptInput, required this.result, required this.language, required final  List<BrandTone> tone, required this.isSaved, required this.status, required this.createdAt, required this.updatedAt, @JsonKey(includeIfNull: false) this.ideaId}): _promptInput = promptInput,_tone = tone;
  factory _GeneratedContent.fromJson(Map<String, dynamic> json) => _$GeneratedContentFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String brandProfileId;
@override final  GenerationType type;
 final  Map<String, dynamic> _promptInput;
@override Map<String, dynamic> get promptInput {
  if (_promptInput is EqualUnmodifiableMapView) return _promptInput;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_promptInput);
}

@override final  AiGenerationResult result;
@override final  ContentLanguage language;
 final  List<BrandTone> _tone;
@override List<BrandTone> get tone {
  if (_tone is EqualUnmodifiableListView) return _tone;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tone);
}

@override final  bool isSaved;
@override final  ContentStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(includeIfNull: false) final  String? ideaId;

/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratedContentCopyWith<_GeneratedContent> get copyWith => __$GeneratedContentCopyWithImpl<_GeneratedContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratedContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._promptInput, _promptInput)&&(identical(other.result, result) || other.result == result)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._tone, _tone)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ideaId, ideaId) || other.ideaId == ideaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,type,const DeepCollectionEquality().hash(_promptInput),result,language,const DeepCollectionEquality().hash(_tone),isSaved,status,createdAt,updatedAt,ideaId);

@override
String toString() {
  return 'GeneratedContent(id: $id, userId: $userId, brandProfileId: $brandProfileId, type: $type, promptInput: $promptInput, result: $result, language: $language, tone: $tone, isSaved: $isSaved, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ideaId: $ideaId)';
}


}

/// @nodoc
abstract mixin class _$GeneratedContentCopyWith<$Res> implements $GeneratedContentCopyWith<$Res> {
  factory _$GeneratedContentCopyWith(_GeneratedContent value, $Res Function(_GeneratedContent) _then) = __$GeneratedContentCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String brandProfileId, GenerationType type, Map<String, dynamic> promptInput, AiGenerationResult result, ContentLanguage language, List<BrandTone> tone, bool isSaved, ContentStatus status, DateTime createdAt, DateTime updatedAt,@JsonKey(includeIfNull: false) String? ideaId
});


@override $AiGenerationResultCopyWith<$Res> get result;

}
/// @nodoc
class __$GeneratedContentCopyWithImpl<$Res>
    implements _$GeneratedContentCopyWith<$Res> {
  __$GeneratedContentCopyWithImpl(this._self, this._then);

  final _GeneratedContent _self;
  final $Res Function(_GeneratedContent) _then;

/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? type = null,Object? promptInput = null,Object? result = null,Object? language = null,Object? tone = null,Object? isSaved = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ideaId = freezed,}) {
  return _then(_GeneratedContent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,promptInput: null == promptInput ? _self._promptInput : promptInput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AiGenerationResult,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,tone: null == tone ? _self._tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,ideaId: freezed == ideaId ? _self.ideaId : ideaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GeneratedContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiGenerationResultCopyWith<$Res> get result {
  
  return $AiGenerationResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
