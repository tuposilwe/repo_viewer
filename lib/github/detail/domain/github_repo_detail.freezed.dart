// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GithubRepoDetail {

 String get fullName; String get html; bool get starred;
/// Create a copy of GithubRepoDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepoDetailCopyWith<GithubRepoDetail> get copyWith => _$GithubRepoDetailCopyWithImpl<GithubRepoDetail>(this as GithubRepoDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepoDetail&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.html, html) || other.html == html)&&(identical(other.starred, starred) || other.starred == starred));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,html,starred);

@override
String toString() {
  return 'GithubRepoDetail(fullName: $fullName, html: $html, starred: $starred)';
}


}

/// @nodoc
abstract mixin class $GithubRepoDetailCopyWith<$Res>  {
  factory $GithubRepoDetailCopyWith(GithubRepoDetail value, $Res Function(GithubRepoDetail) _then) = _$GithubRepoDetailCopyWithImpl;
@useResult
$Res call({
 String fullName, String html, bool starred
});




}
/// @nodoc
class _$GithubRepoDetailCopyWithImpl<$Res>
    implements $GithubRepoDetailCopyWith<$Res> {
  _$GithubRepoDetailCopyWithImpl(this._self, this._then);

  final GithubRepoDetail _self;
  final $Res Function(GithubRepoDetail) _then;

/// Create a copy of GithubRepoDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? html = null,Object? starred = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,starred: null == starred ? _self.starred : starred // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GithubRepoDetail].
extension GithubRepoDetailPatterns on GithubRepoDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepoDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepoDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepoDetail value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepoDetail value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String html,  bool starred)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubRepoDetail() when $default != null:
return $default(_that.fullName,_that.html,_that.starred);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String html,  bool starred)  $default,) {final _that = this;
switch (_that) {
case _GithubRepoDetail():
return $default(_that.fullName,_that.html,_that.starred);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String html,  bool starred)?  $default,) {final _that = this;
switch (_that) {
case _GithubRepoDetail() when $default != null:
return $default(_that.fullName,_that.html,_that.starred);case _:
  return null;

}
}

}

/// @nodoc


class _GithubRepoDetail extends GithubRepoDetail {
  const _GithubRepoDetail({required this.fullName, required this.html, required this.starred}): super._();
  

@override final  String fullName;
@override final  String html;
@override final  bool starred;

/// Create a copy of GithubRepoDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepoDetailCopyWith<_GithubRepoDetail> get copyWith => __$GithubRepoDetailCopyWithImpl<_GithubRepoDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepoDetail&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.html, html) || other.html == html)&&(identical(other.starred, starred) || other.starred == starred));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,html,starred);

@override
String toString() {
  return 'GithubRepoDetail(fullName: $fullName, html: $html, starred: $starred)';
}


}

/// @nodoc
abstract mixin class _$GithubRepoDetailCopyWith<$Res> implements $GithubRepoDetailCopyWith<$Res> {
  factory _$GithubRepoDetailCopyWith(_GithubRepoDetail value, $Res Function(_GithubRepoDetail) _then) = __$GithubRepoDetailCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String html, bool starred
});




}
/// @nodoc
class __$GithubRepoDetailCopyWithImpl<$Res>
    implements _$GithubRepoDetailCopyWith<$Res> {
  __$GithubRepoDetailCopyWithImpl(this._self, this._then);

  final _GithubRepoDetail _self;
  final $Res Function(_GithubRepoDetail) _then;

/// Create a copy of GithubRepoDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? html = null,Object? starred = null,}) {
  return _then(_GithubRepoDetail(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,starred: null == starred ? _self.starred : starred // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
