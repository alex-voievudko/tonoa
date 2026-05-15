// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_plan_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklyPlanItem {

 String get id; String get weeklyPlanId; DateTime get scheduledFor; ContentType get contentType; String get topic; InstagramGoal get goal; String get cta; ContentStatus get status; DateTime get createdAt; DateTime get updatedAt;@JsonKey(includeIfNull: false) String? get generatedContentId;
/// Create a copy of WeeklyPlanItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyPlanItemCopyWith<WeeklyPlanItem> get copyWith => _$WeeklyPlanItemCopyWithImpl<WeeklyPlanItem>(this as WeeklyPlanItem, _$identity);

  /// Serializes this WeeklyPlanItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.weeklyPlanId, weeklyPlanId) || other.weeklyPlanId == weeklyPlanId)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.cta, cta) || other.cta == cta)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.generatedContentId, generatedContentId) || other.generatedContentId == generatedContentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weeklyPlanId,scheduledFor,contentType,topic,goal,cta,status,createdAt,updatedAt,generatedContentId);

@override
String toString() {
  return 'WeeklyPlanItem(id: $id, weeklyPlanId: $weeklyPlanId, scheduledFor: $scheduledFor, contentType: $contentType, topic: $topic, goal: $goal, cta: $cta, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, generatedContentId: $generatedContentId)';
}


}

/// @nodoc
abstract mixin class $WeeklyPlanItemCopyWith<$Res>  {
  factory $WeeklyPlanItemCopyWith(WeeklyPlanItem value, $Res Function(WeeklyPlanItem) _then) = _$WeeklyPlanItemCopyWithImpl;
@useResult
$Res call({
 String id, String weeklyPlanId, DateTime scheduledFor, ContentType contentType, String topic, InstagramGoal goal, String cta, ContentStatus status, DateTime createdAt, DateTime updatedAt,@JsonKey(includeIfNull: false) String? generatedContentId
});




}
/// @nodoc
class _$WeeklyPlanItemCopyWithImpl<$Res>
    implements $WeeklyPlanItemCopyWith<$Res> {
  _$WeeklyPlanItemCopyWithImpl(this._self, this._then);

  final WeeklyPlanItem _self;
  final $Res Function(WeeklyPlanItem) _then;

/// Create a copy of WeeklyPlanItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? weeklyPlanId = null,Object? scheduledFor = null,Object? contentType = null,Object? topic = null,Object? goal = null,Object? cta = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? generatedContentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weeklyPlanId: null == weeklyPlanId ? _self.weeklyPlanId : weeklyPlanId // ignore: cast_nullable_to_non_nullable
as String,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as ContentType,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,cta: null == cta ? _self.cta : cta // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,generatedContentId: freezed == generatedContentId ? _self.generatedContentId : generatedContentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyPlanItem].
extension WeeklyPlanItemPatterns on WeeklyPlanItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyPlanItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyPlanItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyPlanItem value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyPlanItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyPlanItem value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyPlanItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String weeklyPlanId,  DateTime scheduledFor,  ContentType contentType,  String topic,  InstagramGoal goal,  String cta,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? generatedContentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyPlanItem() when $default != null:
return $default(_that.id,_that.weeklyPlanId,_that.scheduledFor,_that.contentType,_that.topic,_that.goal,_that.cta,_that.status,_that.createdAt,_that.updatedAt,_that.generatedContentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String weeklyPlanId,  DateTime scheduledFor,  ContentType contentType,  String topic,  InstagramGoal goal,  String cta,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? generatedContentId)  $default,) {final _that = this;
switch (_that) {
case _WeeklyPlanItem():
return $default(_that.id,_that.weeklyPlanId,_that.scheduledFor,_that.contentType,_that.topic,_that.goal,_that.cta,_that.status,_that.createdAt,_that.updatedAt,_that.generatedContentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String weeklyPlanId,  DateTime scheduledFor,  ContentType contentType,  String topic,  InstagramGoal goal,  String cta,  ContentStatus status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(includeIfNull: false)  String? generatedContentId)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyPlanItem() when $default != null:
return $default(_that.id,_that.weeklyPlanId,_that.scheduledFor,_that.contentType,_that.topic,_that.goal,_that.cta,_that.status,_that.createdAt,_that.updatedAt,_that.generatedContentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyPlanItem implements WeeklyPlanItem {
  const _WeeklyPlanItem({required this.id, required this.weeklyPlanId, required this.scheduledFor, required this.contentType, required this.topic, required this.goal, required this.cta, required this.status, required this.createdAt, required this.updatedAt, @JsonKey(includeIfNull: false) this.generatedContentId});
  factory _WeeklyPlanItem.fromJson(Map<String, dynamic> json) => _$WeeklyPlanItemFromJson(json);

@override final  String id;
@override final  String weeklyPlanId;
@override final  DateTime scheduledFor;
@override final  ContentType contentType;
@override final  String topic;
@override final  InstagramGoal goal;
@override final  String cta;
@override final  ContentStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(includeIfNull: false) final  String? generatedContentId;

/// Create a copy of WeeklyPlanItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyPlanItemCopyWith<_WeeklyPlanItem> get copyWith => __$WeeklyPlanItemCopyWithImpl<_WeeklyPlanItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyPlanItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.weeklyPlanId, weeklyPlanId) || other.weeklyPlanId == weeklyPlanId)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.cta, cta) || other.cta == cta)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.generatedContentId, generatedContentId) || other.generatedContentId == generatedContentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weeklyPlanId,scheduledFor,contentType,topic,goal,cta,status,createdAt,updatedAt,generatedContentId);

@override
String toString() {
  return 'WeeklyPlanItem(id: $id, weeklyPlanId: $weeklyPlanId, scheduledFor: $scheduledFor, contentType: $contentType, topic: $topic, goal: $goal, cta: $cta, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, generatedContentId: $generatedContentId)';
}


}

/// @nodoc
abstract mixin class _$WeeklyPlanItemCopyWith<$Res> implements $WeeklyPlanItemCopyWith<$Res> {
  factory _$WeeklyPlanItemCopyWith(_WeeklyPlanItem value, $Res Function(_WeeklyPlanItem) _then) = __$WeeklyPlanItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String weeklyPlanId, DateTime scheduledFor, ContentType contentType, String topic, InstagramGoal goal, String cta, ContentStatus status, DateTime createdAt, DateTime updatedAt,@JsonKey(includeIfNull: false) String? generatedContentId
});




}
/// @nodoc
class __$WeeklyPlanItemCopyWithImpl<$Res>
    implements _$WeeklyPlanItemCopyWith<$Res> {
  __$WeeklyPlanItemCopyWithImpl(this._self, this._then);

  final _WeeklyPlanItem _self;
  final $Res Function(_WeeklyPlanItem) _then;

/// Create a copy of WeeklyPlanItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weeklyPlanId = null,Object? scheduledFor = null,Object? contentType = null,Object? topic = null,Object? goal = null,Object? cta = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? generatedContentId = freezed,}) {
  return _then(_WeeklyPlanItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weeklyPlanId: null == weeklyPlanId ? _self.weeklyPlanId : weeklyPlanId // ignore: cast_nullable_to_non_nullable
as String,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as ContentType,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as InstagramGoal,cta: null == cta ? _self.cta : cta // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,generatedContentId: freezed == generatedContentId ? _self.generatedContentId : generatedContentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
