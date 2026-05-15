// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_entitlement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsageEntitlement {

 String get userId; int get monthlyGenerationLimit; int get monthlyGenerationCount; int get monthlyWeeklyPlanLimit; int get monthlyWeeklyPlanCount; int get monthlyProfileAuditLimit; int get monthlyProfileAuditCount; bool get isPro; DateTime get periodStart; DateTime get periodEnd;
/// Create a copy of UsageEntitlement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageEntitlementCopyWith<UsageEntitlement> get copyWith => _$UsageEntitlementCopyWithImpl<UsageEntitlement>(this as UsageEntitlement, _$identity);

  /// Serializes this UsageEntitlement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageEntitlement&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.monthlyGenerationLimit, monthlyGenerationLimit) || other.monthlyGenerationLimit == monthlyGenerationLimit)&&(identical(other.monthlyGenerationCount, monthlyGenerationCount) || other.monthlyGenerationCount == monthlyGenerationCount)&&(identical(other.monthlyWeeklyPlanLimit, monthlyWeeklyPlanLimit) || other.monthlyWeeklyPlanLimit == monthlyWeeklyPlanLimit)&&(identical(other.monthlyWeeklyPlanCount, monthlyWeeklyPlanCount) || other.monthlyWeeklyPlanCount == monthlyWeeklyPlanCount)&&(identical(other.monthlyProfileAuditLimit, monthlyProfileAuditLimit) || other.monthlyProfileAuditLimit == monthlyProfileAuditLimit)&&(identical(other.monthlyProfileAuditCount, monthlyProfileAuditCount) || other.monthlyProfileAuditCount == monthlyProfileAuditCount)&&(identical(other.isPro, isPro) || other.isPro == isPro)&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,monthlyGenerationLimit,monthlyGenerationCount,monthlyWeeklyPlanLimit,monthlyWeeklyPlanCount,monthlyProfileAuditLimit,monthlyProfileAuditCount,isPro,periodStart,periodEnd);

@override
String toString() {
  return 'UsageEntitlement(userId: $userId, monthlyGenerationLimit: $monthlyGenerationLimit, monthlyGenerationCount: $monthlyGenerationCount, monthlyWeeklyPlanLimit: $monthlyWeeklyPlanLimit, monthlyWeeklyPlanCount: $monthlyWeeklyPlanCount, monthlyProfileAuditLimit: $monthlyProfileAuditLimit, monthlyProfileAuditCount: $monthlyProfileAuditCount, isPro: $isPro, periodStart: $periodStart, periodEnd: $periodEnd)';
}


}

/// @nodoc
abstract mixin class $UsageEntitlementCopyWith<$Res>  {
  factory $UsageEntitlementCopyWith(UsageEntitlement value, $Res Function(UsageEntitlement) _then) = _$UsageEntitlementCopyWithImpl;
@useResult
$Res call({
 String userId, int monthlyGenerationLimit, int monthlyGenerationCount, int monthlyWeeklyPlanLimit, int monthlyWeeklyPlanCount, int monthlyProfileAuditLimit, int monthlyProfileAuditCount, bool isPro, DateTime periodStart, DateTime periodEnd
});




}
/// @nodoc
class _$UsageEntitlementCopyWithImpl<$Res>
    implements $UsageEntitlementCopyWith<$Res> {
  _$UsageEntitlementCopyWithImpl(this._self, this._then);

  final UsageEntitlement _self;
  final $Res Function(UsageEntitlement) _then;

/// Create a copy of UsageEntitlement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? monthlyGenerationLimit = null,Object? monthlyGenerationCount = null,Object? monthlyWeeklyPlanLimit = null,Object? monthlyWeeklyPlanCount = null,Object? monthlyProfileAuditLimit = null,Object? monthlyProfileAuditCount = null,Object? isPro = null,Object? periodStart = null,Object? periodEnd = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,monthlyGenerationLimit: null == monthlyGenerationLimit ? _self.monthlyGenerationLimit : monthlyGenerationLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyGenerationCount: null == monthlyGenerationCount ? _self.monthlyGenerationCount : monthlyGenerationCount // ignore: cast_nullable_to_non_nullable
as int,monthlyWeeklyPlanLimit: null == monthlyWeeklyPlanLimit ? _self.monthlyWeeklyPlanLimit : monthlyWeeklyPlanLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyWeeklyPlanCount: null == monthlyWeeklyPlanCount ? _self.monthlyWeeklyPlanCount : monthlyWeeklyPlanCount // ignore: cast_nullable_to_non_nullable
as int,monthlyProfileAuditLimit: null == monthlyProfileAuditLimit ? _self.monthlyProfileAuditLimit : monthlyProfileAuditLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyProfileAuditCount: null == monthlyProfileAuditCount ? _self.monthlyProfileAuditCount : monthlyProfileAuditCount // ignore: cast_nullable_to_non_nullable
as int,isPro: null == isPro ? _self.isPro : isPro // ignore: cast_nullable_to_non_nullable
as bool,periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as DateTime,periodEnd: null == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageEntitlement].
extension UsageEntitlementPatterns on UsageEntitlement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageEntitlement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageEntitlement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageEntitlement value)  $default,){
final _that = this;
switch (_that) {
case _UsageEntitlement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageEntitlement value)?  $default,){
final _that = this;
switch (_that) {
case _UsageEntitlement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int monthlyGenerationLimit,  int monthlyGenerationCount,  int monthlyWeeklyPlanLimit,  int monthlyWeeklyPlanCount,  int monthlyProfileAuditLimit,  int monthlyProfileAuditCount,  bool isPro,  DateTime periodStart,  DateTime periodEnd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageEntitlement() when $default != null:
return $default(_that.userId,_that.monthlyGenerationLimit,_that.monthlyGenerationCount,_that.monthlyWeeklyPlanLimit,_that.monthlyWeeklyPlanCount,_that.monthlyProfileAuditLimit,_that.monthlyProfileAuditCount,_that.isPro,_that.periodStart,_that.periodEnd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int monthlyGenerationLimit,  int monthlyGenerationCount,  int monthlyWeeklyPlanLimit,  int monthlyWeeklyPlanCount,  int monthlyProfileAuditLimit,  int monthlyProfileAuditCount,  bool isPro,  DateTime periodStart,  DateTime periodEnd)  $default,) {final _that = this;
switch (_that) {
case _UsageEntitlement():
return $default(_that.userId,_that.monthlyGenerationLimit,_that.monthlyGenerationCount,_that.monthlyWeeklyPlanLimit,_that.monthlyWeeklyPlanCount,_that.monthlyProfileAuditLimit,_that.monthlyProfileAuditCount,_that.isPro,_that.periodStart,_that.periodEnd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int monthlyGenerationLimit,  int monthlyGenerationCount,  int monthlyWeeklyPlanLimit,  int monthlyWeeklyPlanCount,  int monthlyProfileAuditLimit,  int monthlyProfileAuditCount,  bool isPro,  DateTime periodStart,  DateTime periodEnd)?  $default,) {final _that = this;
switch (_that) {
case _UsageEntitlement() when $default != null:
return $default(_that.userId,_that.monthlyGenerationLimit,_that.monthlyGenerationCount,_that.monthlyWeeklyPlanLimit,_that.monthlyWeeklyPlanCount,_that.monthlyProfileAuditLimit,_that.monthlyProfileAuditCount,_that.isPro,_that.periodStart,_that.periodEnd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsageEntitlement implements UsageEntitlement {
  const _UsageEntitlement({required this.userId, required this.monthlyGenerationLimit, required this.monthlyGenerationCount, required this.monthlyWeeklyPlanLimit, required this.monthlyWeeklyPlanCount, required this.monthlyProfileAuditLimit, required this.monthlyProfileAuditCount, required this.isPro, required this.periodStart, required this.periodEnd});
  factory _UsageEntitlement.fromJson(Map<String, dynamic> json) => _$UsageEntitlementFromJson(json);

@override final  String userId;
@override final  int monthlyGenerationLimit;
@override final  int monthlyGenerationCount;
@override final  int monthlyWeeklyPlanLimit;
@override final  int monthlyWeeklyPlanCount;
@override final  int monthlyProfileAuditLimit;
@override final  int monthlyProfileAuditCount;
@override final  bool isPro;
@override final  DateTime periodStart;
@override final  DateTime periodEnd;

/// Create a copy of UsageEntitlement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageEntitlementCopyWith<_UsageEntitlement> get copyWith => __$UsageEntitlementCopyWithImpl<_UsageEntitlement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageEntitlementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageEntitlement&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.monthlyGenerationLimit, monthlyGenerationLimit) || other.monthlyGenerationLimit == monthlyGenerationLimit)&&(identical(other.monthlyGenerationCount, monthlyGenerationCount) || other.monthlyGenerationCount == monthlyGenerationCount)&&(identical(other.monthlyWeeklyPlanLimit, monthlyWeeklyPlanLimit) || other.monthlyWeeklyPlanLimit == monthlyWeeklyPlanLimit)&&(identical(other.monthlyWeeklyPlanCount, monthlyWeeklyPlanCount) || other.monthlyWeeklyPlanCount == monthlyWeeklyPlanCount)&&(identical(other.monthlyProfileAuditLimit, monthlyProfileAuditLimit) || other.monthlyProfileAuditLimit == monthlyProfileAuditLimit)&&(identical(other.monthlyProfileAuditCount, monthlyProfileAuditCount) || other.monthlyProfileAuditCount == monthlyProfileAuditCount)&&(identical(other.isPro, isPro) || other.isPro == isPro)&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,monthlyGenerationLimit,monthlyGenerationCount,monthlyWeeklyPlanLimit,monthlyWeeklyPlanCount,monthlyProfileAuditLimit,monthlyProfileAuditCount,isPro,periodStart,periodEnd);

@override
String toString() {
  return 'UsageEntitlement(userId: $userId, monthlyGenerationLimit: $monthlyGenerationLimit, monthlyGenerationCount: $monthlyGenerationCount, monthlyWeeklyPlanLimit: $monthlyWeeklyPlanLimit, monthlyWeeklyPlanCount: $monthlyWeeklyPlanCount, monthlyProfileAuditLimit: $monthlyProfileAuditLimit, monthlyProfileAuditCount: $monthlyProfileAuditCount, isPro: $isPro, periodStart: $periodStart, periodEnd: $periodEnd)';
}


}

/// @nodoc
abstract mixin class _$UsageEntitlementCopyWith<$Res> implements $UsageEntitlementCopyWith<$Res> {
  factory _$UsageEntitlementCopyWith(_UsageEntitlement value, $Res Function(_UsageEntitlement) _then) = __$UsageEntitlementCopyWithImpl;
@override @useResult
$Res call({
 String userId, int monthlyGenerationLimit, int monthlyGenerationCount, int monthlyWeeklyPlanLimit, int monthlyWeeklyPlanCount, int monthlyProfileAuditLimit, int monthlyProfileAuditCount, bool isPro, DateTime periodStart, DateTime periodEnd
});




}
/// @nodoc
class __$UsageEntitlementCopyWithImpl<$Res>
    implements _$UsageEntitlementCopyWith<$Res> {
  __$UsageEntitlementCopyWithImpl(this._self, this._then);

  final _UsageEntitlement _self;
  final $Res Function(_UsageEntitlement) _then;

/// Create a copy of UsageEntitlement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? monthlyGenerationLimit = null,Object? monthlyGenerationCount = null,Object? monthlyWeeklyPlanLimit = null,Object? monthlyWeeklyPlanCount = null,Object? monthlyProfileAuditLimit = null,Object? monthlyProfileAuditCount = null,Object? isPro = null,Object? periodStart = null,Object? periodEnd = null,}) {
  return _then(_UsageEntitlement(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,monthlyGenerationLimit: null == monthlyGenerationLimit ? _self.monthlyGenerationLimit : monthlyGenerationLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyGenerationCount: null == monthlyGenerationCount ? _self.monthlyGenerationCount : monthlyGenerationCount // ignore: cast_nullable_to_non_nullable
as int,monthlyWeeklyPlanLimit: null == monthlyWeeklyPlanLimit ? _self.monthlyWeeklyPlanLimit : monthlyWeeklyPlanLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyWeeklyPlanCount: null == monthlyWeeklyPlanCount ? _self.monthlyWeeklyPlanCount : monthlyWeeklyPlanCount // ignore: cast_nullable_to_non_nullable
as int,monthlyProfileAuditLimit: null == monthlyProfileAuditLimit ? _self.monthlyProfileAuditLimit : monthlyProfileAuditLimit // ignore: cast_nullable_to_non_nullable
as int,monthlyProfileAuditCount: null == monthlyProfileAuditCount ? _self.monthlyProfileAuditCount : monthlyProfileAuditCount // ignore: cast_nullable_to_non_nullable
as int,isPro: null == isPro ? _self.isPro : isPro // ignore: cast_nullable_to_non_nullable
as bool,periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as DateTime,periodEnd: null == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
