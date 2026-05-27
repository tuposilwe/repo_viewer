// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubHeaders {

 String? get etag; PaginationLink? get link;
/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubHeadersCopyWith<GithubHeaders> get copyWith => _$GithubHeadersCopyWithImpl<GithubHeaders>(this as GithubHeaders, _$identity);

  /// Serializes this GithubHeaders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubHeaders&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,etag,link);

@override
String toString() {
  return 'GithubHeaders(etag: $etag, link: $link)';
}


}

/// @nodoc
abstract mixin class $GithubHeadersCopyWith<$Res>  {
  factory $GithubHeadersCopyWith(GithubHeaders value, $Res Function(GithubHeaders) _then) = _$GithubHeadersCopyWithImpl;
@useResult
$Res call({
 String? etag, PaginationLink? link
});


$PaginationLinkCopyWith<$Res>? get link;

}
/// @nodoc
class _$GithubHeadersCopyWithImpl<$Res>
    implements $GithubHeadersCopyWith<$Res> {
  _$GithubHeadersCopyWithImpl(this._self, this._then);

  final GithubHeaders _self;
  final $Res Function(GithubHeaders) _then;

/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? etag = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as PaginationLink?,
  ));
}
/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PaginationLinkCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [GithubHeaders].
extension GithubHeadersPatterns on GithubHeaders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubHeaders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubHeaders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubHeaders value)  $default,){
final _that = this;
switch (_that) {
case _GithubHeaders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubHeaders value)?  $default,){
final _that = this;
switch (_that) {
case _GithubHeaders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? etag,  PaginationLink? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubHeaders() when $default != null:
return $default(_that.etag,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? etag,  PaginationLink? link)  $default,) {final _that = this;
switch (_that) {
case _GithubHeaders():
return $default(_that.etag,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? etag,  PaginationLink? link)?  $default,) {final _that = this;
switch (_that) {
case _GithubHeaders() when $default != null:
return $default(_that.etag,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubHeaders extends GithubHeaders {
  const _GithubHeaders({this.etag, this.link}): super._();
  factory _GithubHeaders.fromJson(Map<String, dynamic> json) => _$GithubHeadersFromJson(json);

@override final  String? etag;
@override final  PaginationLink? link;

/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubHeadersCopyWith<_GithubHeaders> get copyWith => __$GithubHeadersCopyWithImpl<_GithubHeaders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubHeadersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubHeaders&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,etag,link);

@override
String toString() {
  return 'GithubHeaders(etag: $etag, link: $link)';
}


}

/// @nodoc
abstract mixin class _$GithubHeadersCopyWith<$Res> implements $GithubHeadersCopyWith<$Res> {
  factory _$GithubHeadersCopyWith(_GithubHeaders value, $Res Function(_GithubHeaders) _then) = __$GithubHeadersCopyWithImpl;
@override @useResult
$Res call({
 String? etag, PaginationLink? link
});


@override $PaginationLinkCopyWith<$Res>? get link;

}
/// @nodoc
class __$GithubHeadersCopyWithImpl<$Res>
    implements _$GithubHeadersCopyWith<$Res> {
  __$GithubHeadersCopyWithImpl(this._self, this._then);

  final _GithubHeaders _self;
  final $Res Function(_GithubHeaders) _then;

/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? etag = freezed,Object? link = freezed,}) {
  return _then(_GithubHeaders(
etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as PaginationLink?,
  ));
}

/// Create a copy of GithubHeaders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PaginationLinkCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// @nodoc
mixin _$PaginationLink {

 int get maxPage;
/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinkCopyWith<PaginationLink> get copyWith => _$PaginationLinkCopyWithImpl<PaginationLink>(this as PaginationLink, _$identity);

  /// Serializes this PaginationLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLink&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPage);

@override
String toString() {
  return 'PaginationLink(maxPage: $maxPage)';
}


}

/// @nodoc
abstract mixin class $PaginationLinkCopyWith<$Res>  {
  factory $PaginationLinkCopyWith(PaginationLink value, $Res Function(PaginationLink) _then) = _$PaginationLinkCopyWithImpl;
@useResult
$Res call({
 int maxPage
});




}
/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._self, this._then);

  final PaginationLink _self;
  final $Res Function(PaginationLink) _then;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxPage = null,}) {
  return _then(_self.copyWith(
maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationLink].
extension PaginationLinkPatterns on PaginationLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationLink value)  $default,){
final _that = this;
switch (_that) {
case _PaginationLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationLink value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that.maxPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxPage)  $default,) {final _that = this;
switch (_that) {
case _PaginationLink():
return $default(_that.maxPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that.maxPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationLink extends PaginationLink {
  const _PaginationLink({required this.maxPage}): super._();
  factory _PaginationLink.fromJson(Map<String, dynamic> json) => _$PaginationLinkFromJson(json);

@override final  int maxPage;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinkCopyWith<_PaginationLink> get copyWith => __$PaginationLinkCopyWithImpl<_PaginationLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLink&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPage);

@override
String toString() {
  return 'PaginationLink(maxPage: $maxPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinkCopyWith<$Res> implements $PaginationLinkCopyWith<$Res> {
  factory _$PaginationLinkCopyWith(_PaginationLink value, $Res Function(_PaginationLink) _then) = __$PaginationLinkCopyWithImpl;
@override @useResult
$Res call({
 int maxPage
});




}
/// @nodoc
class __$PaginationLinkCopyWithImpl<$Res>
    implements _$PaginationLinkCopyWith<$Res> {
  __$PaginationLinkCopyWithImpl(this._self, this._then);

  final _PaginationLink _self;
  final $Res Function(_PaginationLink) _then;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxPage = null,}) {
  return _then(_PaginationLink(
maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
