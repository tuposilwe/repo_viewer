// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubRepoDto {

 UserDTO get owner; String get name;@JsonKey(fromJson: _descriptionFromJson) String get description;@JsonKey(name: 'stargazers_count') int get stargazersCount;
/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepoDtoCopyWith<GithubRepoDto> get copyWith => _$GithubRepoDtoCopyWithImpl<GithubRepoDto>(this as GithubRepoDto, _$identity);

  /// Serializes this GithubRepoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepoDto&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,name,description,stargazersCount);

@override
String toString() {
  return 'GithubRepoDto(owner: $owner, name: $name, description: $description, stargazersCount: $stargazersCount)';
}


}

/// @nodoc
abstract mixin class $GithubRepoDtoCopyWith<$Res>  {
  factory $GithubRepoDtoCopyWith(GithubRepoDto value, $Res Function(GithubRepoDto) _then) = _$GithubRepoDtoCopyWithImpl;
@useResult
$Res call({
 UserDTO owner, String name,@JsonKey(fromJson: _descriptionFromJson) String description,@JsonKey(name: 'stargazers_count') int stargazersCount
});


$UserDTOCopyWith<$Res> get owner;

}
/// @nodoc
class _$GithubRepoDtoCopyWithImpl<$Res>
    implements $GithubRepoDtoCopyWith<$Res> {
  _$GithubRepoDtoCopyWithImpl(this._self, this._then);

  final GithubRepoDto _self;
  final $Res Function(GithubRepoDto) _then;

/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = null,Object? name = null,Object? description = null,Object? stargazersCount = null,}) {
  return _then(_self.copyWith(
owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserDTO,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDTOCopyWith<$Res> get owner {
  
  return $UserDTOCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [GithubRepoDto].
extension GithubRepoDtoPatterns on GithubRepoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepoDto value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepoDto value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDTO owner,  String name, @JsonKey(fromJson: _descriptionFromJson)  String description, @JsonKey(name: 'stargazers_count')  int stargazersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubRepoDto() when $default != null:
return $default(_that.owner,_that.name,_that.description,_that.stargazersCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDTO owner,  String name, @JsonKey(fromJson: _descriptionFromJson)  String description, @JsonKey(name: 'stargazers_count')  int stargazersCount)  $default,) {final _that = this;
switch (_that) {
case _GithubRepoDto():
return $default(_that.owner,_that.name,_that.description,_that.stargazersCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDTO owner,  String name, @JsonKey(fromJson: _descriptionFromJson)  String description, @JsonKey(name: 'stargazers_count')  int stargazersCount)?  $default,) {final _that = this;
switch (_that) {
case _GithubRepoDto() when $default != null:
return $default(_that.owner,_that.name,_that.description,_that.stargazersCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubRepoDto extends GithubRepoDto {
  const _GithubRepoDto({required this.owner, required this.name, @JsonKey(fromJson: _descriptionFromJson) required this.description, @JsonKey(name: 'stargazers_count') required this.stargazersCount}): super._();
  factory _GithubRepoDto.fromJson(Map<String, dynamic> json) => _$GithubRepoDtoFromJson(json);

@override final  UserDTO owner;
@override final  String name;
@override@JsonKey(fromJson: _descriptionFromJson) final  String description;
@override@JsonKey(name: 'stargazers_count') final  int stargazersCount;

/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepoDtoCopyWith<_GithubRepoDto> get copyWith => __$GithubRepoDtoCopyWithImpl<_GithubRepoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubRepoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepoDto&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,name,description,stargazersCount);

@override
String toString() {
  return 'GithubRepoDto(owner: $owner, name: $name, description: $description, stargazersCount: $stargazersCount)';
}


}

/// @nodoc
abstract mixin class _$GithubRepoDtoCopyWith<$Res> implements $GithubRepoDtoCopyWith<$Res> {
  factory _$GithubRepoDtoCopyWith(_GithubRepoDto value, $Res Function(_GithubRepoDto) _then) = __$GithubRepoDtoCopyWithImpl;
@override @useResult
$Res call({
 UserDTO owner, String name,@JsonKey(fromJson: _descriptionFromJson) String description,@JsonKey(name: 'stargazers_count') int stargazersCount
});


@override $UserDTOCopyWith<$Res> get owner;

}
/// @nodoc
class __$GithubRepoDtoCopyWithImpl<$Res>
    implements _$GithubRepoDtoCopyWith<$Res> {
  __$GithubRepoDtoCopyWithImpl(this._self, this._then);

  final _GithubRepoDto _self;
  final $Res Function(_GithubRepoDto) _then;

/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = null,Object? name = null,Object? description = null,Object? stargazersCount = null,}) {
  return _then(_GithubRepoDto(
owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserDTO,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of GithubRepoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDTOCopyWith<$Res> get owner {
  
  return $UserDTOCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
