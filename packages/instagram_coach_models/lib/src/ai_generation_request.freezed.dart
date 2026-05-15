// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_generation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiGenerationRequest {

 String get brandProfileId; GenerationType get type; InstagramGoal get goal; ContentLanguage get language; List<BrandTone> get tone; Map<String, dynamic> get constraints; Map<String, dynamic> get input;
/// Create a copy of AiGenerationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiGenerationRequestCopyWith<AiGenerationRequest> get copyWith => _$AiGenerationRequestCopyWithImpl<AiGenerationRequest>(this as AiGenerationRequest, _$identity);

  /// Serializes this AiGenerationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiGenerationRequest&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.type, type) || other.type == type)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.tone, tone)&&const DeepCollectionEquality().equals(other.constraints, constraints)&&const DeepCollectionEquality().equals(other.input, input));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brandProfileId,type,goal,language,const DeepCollectionEquality().hash(tone),const DeepCollectionEquality().hash(constraints),const DeepCollectionEquality().hash(input));

@override
String toString() {
  return 'AiGenerationRequest(brandProfileId: $brandProfileId, type: $type, goal: $goal, language: $language, tone: $tone, constraints: $constraints, input: $input)';
}


}

/// @nodoc
abstract mixin class $AiGenerationRequestCopyWith<$Res>  {
  factory $AiGenerationRequestCopyWith(AiGenerationRequest value, $Res Function(AiGenerationRequest) _then) = _$AiGenerationRequestCopyWithImpl;
@useResult
$Res call({
 String brandProfileId, GenerationType type, InstagramGoal goal, ContentLanguage language, List<BrandTone> tone, Map<String, dynamic> constraints, Map<String, dynamic> input
});




}
/// @nodoc
class _$AiGenerationRequestCopyWithImpl<$Res>
    implements $AiGenerationRequestCopyWith<$Res> {
  _$AiGenerationRequestCopyWithImpl(this._self, this._then);

  final AiGenerationRequest _self;
  final $Res Function(AiGenerationRequest) _then;

/// Create a copy of AiGenerationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brandProfileId = null,Object? type = null,Object? goal = null,Object? language = null,Object? tone = null,Object? constraints = null,Object? input = null,}) {
  return _then(_self.copyWith(
brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,constraints: null == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AiGenerationRequest].
extension AiGenerationRequestPatterns on AiGenerationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiGenerationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiGenerationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiGenerationRequest value)  $default,){
final _that = this;
switch (_that) {
case _AiGenerationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiGenerationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AiGenerationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String brandProfileId,  GenerationType type,  InstagramGoal goal,  ContentLanguage language,  List<BrandTone> tone,  Map<String, dynamic> constraints,  Map<String, dynamic> input)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiGenerationRequest() when $default != null:
return $default(_that.brandProfileId,_that.type,_that.goal,_that.language,_that.tone,_that.constraints,_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String brandProfileId,  GenerationType type,  InstagramGoal goal,  ContentLanguage language,  List<BrandTone> tone,  Map<String, dynamic> constraints,  Map<String, dynamic> input)  $default,) {final _that = this;
switch (_that) {
case _AiGenerationRequest():
return $default(_that.brandProfileId,_that.type,_that.goal,_that.language,_that.tone,_that.constraints,_that.input);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String brandProfileId,  GenerationType type,  InstagramGoal goal,  ContentLanguage language,  List<BrandTone> tone,  Map<String, dynamic> constraints,  Map<String, dynamic> input)?  $default,) {final _that = this;
switch (_that) {
case _AiGenerationRequest() when $default != null:
return $default(_that.brandProfileId,_that.type,_that.goal,_that.language,_that.tone,_that.constraints,_that.input);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiGenerationRequest implements AiGenerationRequest {
  const _AiGenerationRequest({required this.brandProfileId, required this.type, required this.goal, required this.language, required final  List<BrandTone> tone, required final  Map<String, dynamic> constraints, required final  Map<String, dynamic> input}): _tone = tone,_constraints = constraints,_input = input;
  factory _AiGenerationRequest.fromJson(Map<String, dynamic> json) => _$AiGenerationRequestFromJson(json);

@override final  String brandProfileId;
@override final  GenerationType type;
@override final  InstagramGoal goal;
@override final  ContentLanguage language;
 final  List<BrandTone> _tone;
@override List<BrandTone> get tone {
  if (_tone is EqualUnmodifiableListView) return _tone;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tone);
}

 final  Map<String, dynamic> _constraints;
@override Map<String, dynamic> get constraints {
  if (_constraints is EqualUnmodifiableMapView) return _constraints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_constraints);
}

 final  Map<String, dynamic> _input;
@override Map<String, dynamic> get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}


/// Create a copy of AiGenerationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiGenerationRequestCopyWith<_AiGenerationRequest> get copyWith => __$AiGenerationRequestCopyWithImpl<_AiGenerationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiGenerationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiGenerationRequest&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.type, type) || other.type == type)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._tone, _tone)&&const DeepCollectionEquality().equals(other._constraints, _constraints)&&const DeepCollectionEquality().equals(other._input, _input));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brandProfileId,type,goal,language,const DeepCollectionEquality().hash(_tone),const DeepCollectionEquality().hash(_constraints),const DeepCollectionEquality().hash(_input));

@override
String toString() {
  return 'AiGenerationRequest(brandProfileId: $brandProfileId, type: $type, goal: $goal, language: $language, tone: $tone, constraints: $constraints, input: $input)';
}


}

/// @nodoc
abstract mixin class _$AiGenerationRequestCopyWith<$Res> implements $AiGenerationRequestCopyWith<$Res> {
  factory _$AiGenerationRequestCopyWith(_AiGenerationRequest value, $Res Function(_AiGenerationRequest) _then) = __$AiGenerationRequestCopyWithImpl;
@override @useResult
$Res call({
 String brandProfileId, GenerationType type, InstagramGoal goal, ContentLanguage language, List<BrandTone> tone, Map<String, dynamic> constraints, Map<String, dynamic> input
});




}
/// @nodoc
class __$AiGenerationRequestCopyWithImpl<$Res>
    implements _$AiGenerationRequestCopyWith<$Res> {
  __$AiGenerationRequestCopyWithImpl(this._self, this._then);

  final _AiGenerationRequest _self;
  final $Res Function(_AiGenerationRequest) _then;

/// Create a copy of AiGenerationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brandProfileId = null,Object? type = null,Object? goal = null,Object? language = null,Object? tone = null,Object? constraints = null,Object? input = null,}) {
  return _then(_AiGenerationRequest(
brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as ContentLanguage,tone: null == tone ? _self._tone : tone // ignore: cast_nullable_to_non_nullable
as List<BrandTone>,constraints: null == constraints ? _self._constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,input: null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
