// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fresh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Fresh<T> {

 T get entity; bool get isFresh; bool? get isNextPageAvailable;
/// Create a copy of Fresh
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreshCopyWith<T, Fresh<T>> get copyWith => _$FreshCopyWithImpl<T, Fresh<T>>(this as Fresh<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fresh<T>&&const DeepCollectionEquality().equals(other.entity, entity)&&(identical(other.isFresh, isFresh) || other.isFresh == isFresh)&&(identical(other.isNextPageAvailable, isNextPageAvailable) || other.isNextPageAvailable == isNextPageAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entity),isFresh,isNextPageAvailable);

@override
String toString() {
  return 'Fresh<$T>(entity: $entity, isFresh: $isFresh, isNextPageAvailable: $isNextPageAvailable)';
}


}

/// @nodoc
abstract mixin class $FreshCopyWith<T,$Res>  {
  factory $FreshCopyWith(Fresh<T> value, $Res Function(Fresh<T>) _then) = _$FreshCopyWithImpl;
@useResult
$Res call({
 T entity, bool isFresh, bool? isNextPageAvailable
});




}
/// @nodoc
class _$FreshCopyWithImpl<T,$Res>
    implements $FreshCopyWith<T, $Res> {
  _$FreshCopyWithImpl(this._self, this._then);

  final Fresh<T> _self;
  final $Res Function(Fresh<T>) _then;

/// Create a copy of Fresh
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entity = freezed,Object? isFresh = null,Object? isNextPageAvailable = freezed,}) {
  return _then(_self.copyWith(
entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as T,isFresh: null == isFresh ? _self.isFresh : isFresh // ignore: cast_nullable_to_non_nullable
as bool,isNextPageAvailable: freezed == isNextPageAvailable ? _self.isNextPageAvailable : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Fresh].
extension FreshPatterns<T> on Fresh<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fresh<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fresh() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fresh<T> value)  $default,){
final _that = this;
switch (_that) {
case _Fresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fresh<T> value)?  $default,){
final _that = this;
switch (_that) {
case _Fresh() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T entity,  bool isFresh,  bool? isNextPageAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fresh() when $default != null:
return $default(_that.entity,_that.isFresh,_that.isNextPageAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T entity,  bool isFresh,  bool? isNextPageAvailable)  $default,) {final _that = this;
switch (_that) {
case _Fresh():
return $default(_that.entity,_that.isFresh,_that.isNextPageAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T entity,  bool isFresh,  bool? isNextPageAvailable)?  $default,) {final _that = this;
switch (_that) {
case _Fresh() when $default != null:
return $default(_that.entity,_that.isFresh,_that.isNextPageAvailable);case _:
  return null;

}
}

}

/// @nodoc


class _Fresh<T> extends Fresh<T> {
  const _Fresh({required this.entity, required this.isFresh, this.isNextPageAvailable}): super._();
  

@override final  T entity;
@override final  bool isFresh;
@override final  bool? isNextPageAvailable;

/// Create a copy of Fresh
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreshCopyWith<T, _Fresh<T>> get copyWith => __$FreshCopyWithImpl<T, _Fresh<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fresh<T>&&const DeepCollectionEquality().equals(other.entity, entity)&&(identical(other.isFresh, isFresh) || other.isFresh == isFresh)&&(identical(other.isNextPageAvailable, isNextPageAvailable) || other.isNextPageAvailable == isNextPageAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entity),isFresh,isNextPageAvailable);

@override
String toString() {
  return 'Fresh<$T>(entity: $entity, isFresh: $isFresh, isNextPageAvailable: $isNextPageAvailable)';
}


}

/// @nodoc
abstract mixin class _$FreshCopyWith<T,$Res> implements $FreshCopyWith<T, $Res> {
  factory _$FreshCopyWith(_Fresh<T> value, $Res Function(_Fresh<T>) _then) = __$FreshCopyWithImpl;
@override @useResult
$Res call({
 T entity, bool isFresh, bool? isNextPageAvailable
});




}
/// @nodoc
class __$FreshCopyWithImpl<T,$Res>
    implements _$FreshCopyWith<T, $Res> {
  __$FreshCopyWithImpl(this._self, this._then);

  final _Fresh<T> _self;
  final $Res Function(_Fresh<T>) _then;

/// Create a copy of Fresh
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entity = freezed,Object? isFresh = null,Object? isNextPageAvailable = freezed,}) {
  return _then(_Fresh<T>(
entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as T,isFresh: null == isFresh ? _self.isFresh : isFresh // ignore: cast_nullable_to_non_nullable
as bool,isNextPageAvailable: freezed == isNextPageAvailable ? _self.isNextPageAvailable : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
