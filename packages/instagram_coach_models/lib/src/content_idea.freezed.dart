// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_idea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentIdea {

 String get id; String get userId; String get brandProfileId; String get title; ContentType get format; InstagramGoal get goal; String get description; String get whyItWorks; ContentStatus get status; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of ContentIdea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentIdeaCopyWith<ContentIdea> get copyWith => _$ContentIdeaCopyWithImpl<ContentIdea>(this as ContentIdea, _$identity);

  /// Serializes this ContentIdea to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentIdea&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.title, title) || other.title == title)&&(identical(other.format, format) || other.format == format)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description)&&(identical(other.whyItWorks, whyItWorks) || other.whyItWorks == whyItWorks)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,title,format,goal,description,whyItWorks,status,createdAt,updatedAt);

@override
String toString() {
  return 'ContentIdea(id: $id, userId: $userId, brandProfileId: $brandProfileId, title: $title, format: $format, goal: $goal, description: $description, whyItWorks: $whyItWorks, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ContentIdeaCopyWith<$Res>  {
  factory $ContentIdeaCopyWith(ContentIdea value, $Res Function(ContentIdea) _then) = _$ContentIdeaCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String brandProfileId, String title, ContentType format, InstagramGoal goal, String description, String whyItWorks, ContentStatus status, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ContentIdeaCopyWithImpl<$Res>
    implements $ContentIdeaCopyWith<$Res> {
  _$ContentIdeaCopyWithImpl(this._self, this._then);

  final ContentIdea _self;
  final $Res Function(ContentIdea) _then;

/// Create a copy of ContentIdea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? title = null,Object? format = null,Object? goal = null,Object? description = null,Object? whyItWorks = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ContentType,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,whyItWorks: null == whyItWorks ? _self.whyItWorks : whyItWorks // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentIdea].
extension ContentIdeaPatterns on ContentIdea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentIdea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentIdea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentIdea value)  $default,){
final _that = this;
switch (_that) {
case _ContentIdea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentIdea value)?  $default,){
final _that = this;
switch (_that) {
case _ContentIdea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  String title,  ContentType format,  InstagramGoal goal,  String description,  String whyItWorks,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentIdea() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.title,_that.format,_that.goal,_that.description,_that.whyItWorks,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  String title,  ContentType format,  InstagramGoal goal,  String description,  String whyItWorks,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ContentIdea():
return $default(_that.id,_that.userId,_that.brandProfileId,_that.title,_that.format,_that.goal,_that.description,_that.whyItWorks,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String brandProfileId,  String title,  ContentType format,  InstagramGoal goal,  String description,  String whyItWorks,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ContentIdea() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.title,_that.format,_that.goal,_that.description,_that.whyItWorks,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentIdea implements ContentIdea {
  const _ContentIdea({required this.id, required this.userId, required this.brandProfileId, required this.title, required this.format, required this.goal, required this.description, required this.whyItWorks, required this.status, required this.createdAt, required this.updatedAt});
  factory _ContentIdea.fromJson(Map<String, dynamic> json) => _$ContentIdeaFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String brandProfileId;
@override final  String title;
@override final  ContentType format;
@override final  InstagramGoal goal;
@override final  String description;
@override final  String whyItWorks;
@override final  ContentStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of ContentIdea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentIdeaCopyWith<_ContentIdea> get copyWith => __$ContentIdeaCopyWithImpl<_ContentIdea>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentIdeaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentIdea&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.title, title) || other.title == title)&&(identical(other.format, format) || other.format == format)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description)&&(identical(other.whyItWorks, whyItWorks) || other.whyItWorks == whyItWorks)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,title,format,goal,description,whyItWorks,status,createdAt,updatedAt);

@override
String toString() {
  return 'ContentIdea(id: $id, userId: $userId, brandProfileId: $brandProfileId, title: $title, format: $format, goal: $goal, description: $description, whyItWorks: $whyItWorks, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ContentIdeaCopyWith<$Res> implements $ContentIdeaCopyWith<$Res> {
  factory _$ContentIdeaCopyWith(_ContentIdea value, $Res Function(_ContentIdea) _then) = __$ContentIdeaCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String brandProfileId, String title, ContentType format, InstagramGoal goal, String description, String whyItWorks, ContentStatus status, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ContentIdeaCopyWithImpl<$Res>
    implements _$ContentIdeaCopyWith<$Res> {
  __$ContentIdeaCopyWithImpl(this._self, this._then);

  final _ContentIdea _self;
  final $Res Function(_ContentIdea) _then;

/// Create a copy of ContentIdea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? title = null,Object? format = null,Object? goal = null,Object? description = null,Object? whyItWorks = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ContentIdea(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ContentType,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,whyItWorks: null == whyItWorks ? _self.whyItWorks : whyItWorks // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
