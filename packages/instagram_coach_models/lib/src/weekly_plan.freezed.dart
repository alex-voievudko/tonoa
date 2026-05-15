// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklyPlan {

 String get id; String get userId; String get brandProfileId; DateTime get weekStartDate; String get goal; DateTime get createdAt; DateTime get updatedAt; List<WeeklyPlanItem> get items;
/// Create a copy of WeeklyPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyPlanCopyWith<WeeklyPlan> get copyWith => _$WeeklyPlanCopyWithImpl<WeeklyPlan>(this as WeeklyPlan, _$identity);

  /// Serializes this WeeklyPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.weekStartDate, weekStartDate) || other.weekStartDate == weekStartDate)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,weekStartDate,goal,createdAt,updatedAt,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'WeeklyPlan(id: $id, userId: $userId, brandProfileId: $brandProfileId, weekStartDate: $weekStartDate, goal: $goal, createdAt: $createdAt, updatedAt: $updatedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $WeeklyPlanCopyWith<$Res>  {
  factory $WeeklyPlanCopyWith(WeeklyPlan value, $Res Function(WeeklyPlan) _then) = _$WeeklyPlanCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String brandProfileId, DateTime weekStartDate, String goal, DateTime createdAt, DateTime updatedAt, List<WeeklyPlanItem> items
});




}
/// @nodoc
class _$WeeklyPlanCopyWithImpl<$Res>
    implements $WeeklyPlanCopyWith<$Res> {
  _$WeeklyPlanCopyWithImpl(this._self, this._then);

  final WeeklyPlan _self;
  final $Res Function(WeeklyPlan) _then;

/// Create a copy of WeeklyPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? weekStartDate = null,Object? goal = null,Object? createdAt = null,Object? updatedAt = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,weekStartDate: null == weekStartDate ? _self.weekStartDate : weekStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WeeklyPlanItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyPlan].
extension WeeklyPlanPatterns on WeeklyPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyPlan value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyPlan value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  DateTime weekStartDate,  String goal,  DateTime createdAt,  DateTime updatedAt,  List<WeeklyPlanItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyPlan() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.weekStartDate,_that.goal,_that.createdAt,_that.updatedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String brandProfileId,  DateTime weekStartDate,  String goal,  DateTime createdAt,  DateTime updatedAt,  List<WeeklyPlanItem> items)  $default,) {final _that = this;
switch (_that) {
case _WeeklyPlan():
return $default(_that.id,_that.userId,_that.brandProfileId,_that.weekStartDate,_that.goal,_that.createdAt,_that.updatedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String brandProfileId,  DateTime weekStartDate,  String goal,  DateTime createdAt,  DateTime updatedAt,  List<WeeklyPlanItem> items)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyPlan() when $default != null:
return $default(_that.id,_that.userId,_that.brandProfileId,_that.weekStartDate,_that.goal,_that.createdAt,_that.updatedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyPlan implements WeeklyPlan {
  const _WeeklyPlan({required this.id, required this.userId, required this.brandProfileId, required this.weekStartDate, required this.goal, required this.createdAt, required this.updatedAt, final  List<WeeklyPlanItem> items = const <WeeklyPlanItem>[]}): _items = items;
  factory _WeeklyPlan.fromJson(Map<String, dynamic> json) => _$WeeklyPlanFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String brandProfileId;
@override final  DateTime weekStartDate;
@override final  String goal;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
 final  List<WeeklyPlanItem> _items;
@override@JsonKey() List<WeeklyPlanItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of WeeklyPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyPlanCopyWith<_WeeklyPlan> get copyWith => __$WeeklyPlanCopyWithImpl<_WeeklyPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.brandProfileId, brandProfileId) || other.brandProfileId == brandProfileId)&&(identical(other.weekStartDate, weekStartDate) || other.weekStartDate == weekStartDate)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,brandProfileId,weekStartDate,goal,createdAt,updatedAt,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'WeeklyPlan(id: $id, userId: $userId, brandProfileId: $brandProfileId, weekStartDate: $weekStartDate, goal: $goal, createdAt: $createdAt, updatedAt: $updatedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$WeeklyPlanCopyWith<$Res> implements $WeeklyPlanCopyWith<$Res> {
  factory _$WeeklyPlanCopyWith(_WeeklyPlan value, $Res Function(_WeeklyPlan) _then) = __$WeeklyPlanCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String brandProfileId, DateTime weekStartDate, String goal, DateTime createdAt, DateTime updatedAt, List<WeeklyPlanItem> items
});




}
/// @nodoc
class __$WeeklyPlanCopyWithImpl<$Res>
    implements _$WeeklyPlanCopyWith<$Res> {
  __$WeeklyPlanCopyWithImpl(this._self, this._then);

  final _WeeklyPlan _self;
  final $Res Function(_WeeklyPlan) _then;

/// Create a copy of WeeklyPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? brandProfileId = null,Object? weekStartDate = null,Object? goal = null,Object? createdAt = null,Object? updatedAt = null,Object? items = null,}) {
  return _then(_WeeklyPlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,brandProfileId: null == brandProfileId ? _self.brandProfileId : brandProfileId // ignore: cast_nullable_to_non_nullable
as String,weekStartDate: null == weekStartDate ? _self.weekStartDate : weekStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WeeklyPlanItem>,
  ));
}


}

// dart format on
