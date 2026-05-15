// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_generation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiGenerationResult {

 GenerationType get type; Map<String, dynamic> get content; DateTime get generatedAt; List<String> get warnings;
/// Create a copy of AiGenerationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiGenerationResultCopyWith<AiGenerationResult> get copyWith => _$AiGenerationResultCopyWithImpl<AiGenerationResult>(this as AiGenerationResult, _$identity);

  /// Serializes this AiGenerationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiGenerationResult&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other.warnings, warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(content),generatedAt,const DeepCollectionEquality().hash(warnings));

@override
String toString() {
  return 'AiGenerationResult(type: $type, content: $content, generatedAt: $generatedAt, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class $AiGenerationResultCopyWith<$Res>  {
  factory $AiGenerationResultCopyWith(AiGenerationResult value, $Res Function(AiGenerationResult) _then) = _$AiGenerationResultCopyWithImpl;
@useResult
$Res call({
 GenerationType type, Map<String, dynamic> content, DateTime generatedAt, List<String> warnings
});




}
/// @nodoc
class _$AiGenerationResultCopyWithImpl<$Res>
    implements $AiGenerationResultCopyWith<$Res> {
  _$AiGenerationResultCopyWithImpl(this._self, this._then);

  final AiGenerationResult _self;
  final $Res Function(AiGenerationResult) _then;

/// Create a copy of AiGenerationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? content = null,Object? generatedAt = null,Object? warnings = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AiGenerationResult].
extension AiGenerationResultPatterns on AiGenerationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiGenerationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiGenerationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiGenerationResult value)  $default,){
final _that = this;
switch (_that) {
case _AiGenerationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiGenerationResult value)?  $default,){
final _that = this;
switch (_that) {
case _AiGenerationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenerationType type,  Map<String, dynamic> content,  DateTime generatedAt,  List<String> warnings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiGenerationResult() when $default != null:
return $default(_that.type,_that.content,_that.generatedAt,_that.warnings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenerationType type,  Map<String, dynamic> content,  DateTime generatedAt,  List<String> warnings)  $default,) {final _that = this;
switch (_that) {
case _AiGenerationResult():
return $default(_that.type,_that.content,_that.generatedAt,_that.warnings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenerationType type,  Map<String, dynamic> content,  DateTime generatedAt,  List<String> warnings)?  $default,) {final _that = this;
switch (_that) {
case _AiGenerationResult() when $default != null:
return $default(_that.type,_that.content,_that.generatedAt,_that.warnings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiGenerationResult implements AiGenerationResult {
  const _AiGenerationResult({required this.type, required final  Map<String, dynamic> content, required this.generatedAt, final  List<String> warnings = const <String>[]}): _content = content,_warnings = warnings;
  factory _AiGenerationResult.fromJson(Map<String, dynamic> json) => _$AiGenerationResultFromJson(json);

@override final  GenerationType type;
 final  Map<String, dynamic> _content;
@override Map<String, dynamic> get content {
  if (_content is EqualUnmodifiableMapView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_content);
}

@override final  DateTime generatedAt;
 final  List<String> _warnings;
@override@JsonKey() List<String> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}


/// Create a copy of AiGenerationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiGenerationResultCopyWith<_AiGenerationResult> get copyWith => __$AiGenerationResultCopyWithImpl<_AiGenerationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiGenerationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiGenerationResult&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other._warnings, _warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_content),generatedAt,const DeepCollectionEquality().hash(_warnings));

@override
String toString() {
  return 'AiGenerationResult(type: $type, content: $content, generatedAt: $generatedAt, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class _$AiGenerationResultCopyWith<$Res> implements $AiGenerationResultCopyWith<$Res> {
  factory _$AiGenerationResultCopyWith(_AiGenerationResult value, $Res Function(_AiGenerationResult) _then) = __$AiGenerationResultCopyWithImpl;
@override @useResult
$Res call({
 GenerationType type, Map<String, dynamic> content, DateTime generatedAt, List<String> warnings
});




}
/// @nodoc
class __$AiGenerationResultCopyWithImpl<$Res>
    implements _$AiGenerationResultCopyWith<$Res> {
  __$AiGenerationResultCopyWithImpl(this._self, this._then);

  final _AiGenerationResult _self;
  final $Res Function(_AiGenerationResult) _then;

/// Create a copy of AiGenerationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? content = null,Object? generatedAt = null,Object? warnings = null,}) {
  return _then(_AiGenerationResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GenerationType,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
