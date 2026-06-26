// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubRepoDetailDto {

 String get fullName; String get html; bool get starred;
/// Create a copy of GithubRepoDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepoDetailDtoCopyWith<GithubRepoDetailDto> get copyWith => _$GithubRepoDetailDtoCopyWithImpl<GithubRepoDetailDto>(this as GithubRepoDetailDto, _$identity);

  /// Serializes this GithubRepoDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepoDetailDto&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.html, html) || other.html == html)&&(identical(other.starred, starred) || other.starred == starred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,html,starred);

@override
String toString() {
  return 'GithubRepoDetailDto(fullName: $fullName, html: $html, starred: $starred)';
}


}

/// @nodoc
abstract mixin class $GithubRepoDetailDtoCopyWith<$Res>  {
  factory $GithubRepoDetailDtoCopyWith(GithubRepoDetailDto value, $Res Function(GithubRepoDetailDto) _then) = _$GithubRepoDetailDtoCopyWithImpl;
@useResult
$Res call({
 String fullName, String html, bool starred
});




}
/// @nodoc
class _$GithubRepoDetailDtoCopyWithImpl<$Res>
    implements $GithubRepoDetailDtoCopyWith<$Res> {
  _$GithubRepoDetailDtoCopyWithImpl(this._self, this._then);

  final GithubRepoDetailDto _self;
  final $Res Function(GithubRepoDetailDto) _then;

/// Create a copy of GithubRepoDetailDto
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


/// Adds pattern-matching-related methods to [GithubRepoDetailDto].
extension GithubRepoDetailDtoPatterns on GithubRepoDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepoDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepoDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepoDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepoDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDetailDto() when $default != null:
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
case _GithubRepoDetailDto() when $default != null:
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
case _GithubRepoDetailDto():
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
case _GithubRepoDetailDto() when $default != null:
return $default(_that.fullName,_that.html,_that.starred);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubRepoDetailDto extends GithubRepoDetailDto {
  const _GithubRepoDetailDto({required this.fullName, required this.html, required this.starred}): super._();
  factory _GithubRepoDetailDto.fromJson(Map<String, dynamic> json) => _$GithubRepoDetailDtoFromJson(json);

@override final  String fullName;
@override final  String html;
@override final  bool starred;

/// Create a copy of GithubRepoDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepoDetailDtoCopyWith<_GithubRepoDetailDto> get copyWith => __$GithubRepoDetailDtoCopyWithImpl<_GithubRepoDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubRepoDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepoDetailDto&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.html, html) || other.html == html)&&(identical(other.starred, starred) || other.starred == starred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,html,starred);

@override
String toString() {
  return 'GithubRepoDetailDto(fullName: $fullName, html: $html, starred: $starred)';
}


}

/// @nodoc
abstract mixin class _$GithubRepoDetailDtoCopyWith<$Res> implements $GithubRepoDetailDtoCopyWith<$Res> {
  factory _$GithubRepoDetailDtoCopyWith(_GithubRepoDetailDto value, $Res Function(_GithubRepoDetailDto) _then) = __$GithubRepoDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String html, bool starred
});




}
/// @nodoc
class __$GithubRepoDetailDtoCopyWithImpl<$Res>
    implements _$GithubRepoDetailDtoCopyWith<$Res> {
  __$GithubRepoDetailDtoCopyWithImpl(this._self, this._then);

  final _GithubRepoDetailDto _self;
  final $Res Function(_GithubRepoDetailDto) _then;

/// Create a copy of GithubRepoDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? html = null,Object? starred = null,}) {
  return _then(_GithubRepoDetailDto(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,starred: null == starred ? _self.starred : starred // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
