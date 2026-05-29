// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'starred_repos_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StarredReposState {

 Fresh<List<GithubRepo>> get repos;
/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StarredReposStateCopyWith<StarredReposState> get copyWith => _$StarredReposStateCopyWithImpl<StarredReposState>(this as StarredReposState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StarredReposState&&(identical(other.repos, repos) || other.repos == repos));
}


@override
int get hashCode => Object.hash(runtimeType,repos);

@override
String toString() {
  return 'StarredReposState(repos: $repos)';
}


}

/// @nodoc
abstract mixin class $StarredReposStateCopyWith<$Res>  {
  factory $StarredReposStateCopyWith(StarredReposState value, $Res Function(StarredReposState) _then) = _$StarredReposStateCopyWithImpl;
@useResult
$Res call({
 Fresh<List<GithubRepo>> repos
});


$FreshCopyWith<List<GithubRepo>, $Res> get repos;

}
/// @nodoc
class _$StarredReposStateCopyWithImpl<$Res>
    implements $StarredReposStateCopyWith<$Res> {
  _$StarredReposStateCopyWithImpl(this._self, this._then);

  final StarredReposState _self;
  final $Res Function(StarredReposState) _then;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? repos = null,}) {
  return _then(_self.copyWith(
repos: null == repos ? _self.repos : repos // ignore: cast_nullable_to_non_nullable
as Fresh<List<GithubRepo>>,
  ));
}
/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreshCopyWith<List<GithubRepo>, $Res> get repos {
  
  return $FreshCopyWith<List<GithubRepo>, $Res>(_self.repos, (value) {
    return _then(_self.copyWith(repos: value));
  });
}
}


/// Adds pattern-matching-related methods to [StarredReposState].
extension StarredReposStatePatterns on StarredReposState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadInProgress value)?  loadInProgress,TResult Function( _LoadInSuccess value)?  loadInSuccess,TResult Function( _LoadFailure value)?  loadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case _LoadInSuccess() when loadInSuccess != null:
return loadInSuccess(_that);case _LoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadInProgress value)  loadInProgress,required TResult Function( _LoadInSuccess value)  loadInSuccess,required TResult Function( _LoadFailure value)  loadFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadInProgress():
return loadInProgress(_that);case _LoadInSuccess():
return loadInSuccess(_that);case _LoadFailure():
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadInProgress value)?  loadInProgress,TResult? Function( _LoadInSuccess value)?  loadInSuccess,TResult? Function( _LoadFailure value)?  loadFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case _LoadInSuccess() when loadInSuccess != null:
return loadInSuccess(_that);case _LoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Fresh<List<GithubRepo>> repos)?  initial,TResult Function( Fresh<List<GithubRepo>> repos,  int itemsPerPage)?  loadInProgress,TResult Function( Fresh<List<GithubRepo>> repos,  bool isNextPageAvailable)?  loadInSuccess,TResult Function( Fresh<List<GithubRepo>> repos,  GithubFailure failure)?  loadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.repos);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that.repos,_that.itemsPerPage);case _LoadInSuccess() when loadInSuccess != null:
return loadInSuccess(_that.repos,_that.isNextPageAvailable);case _LoadFailure() when loadFailure != null:
return loadFailure(_that.repos,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Fresh<List<GithubRepo>> repos)  initial,required TResult Function( Fresh<List<GithubRepo>> repos,  int itemsPerPage)  loadInProgress,required TResult Function( Fresh<List<GithubRepo>> repos,  bool isNextPageAvailable)  loadInSuccess,required TResult Function( Fresh<List<GithubRepo>> repos,  GithubFailure failure)  loadFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.repos);case _LoadInProgress():
return loadInProgress(_that.repos,_that.itemsPerPage);case _LoadInSuccess():
return loadInSuccess(_that.repos,_that.isNextPageAvailable);case _LoadFailure():
return loadFailure(_that.repos,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Fresh<List<GithubRepo>> repos)?  initial,TResult? Function( Fresh<List<GithubRepo>> repos,  int itemsPerPage)?  loadInProgress,TResult? Function( Fresh<List<GithubRepo>> repos,  bool isNextPageAvailable)?  loadInSuccess,TResult? Function( Fresh<List<GithubRepo>> repos,  GithubFailure failure)?  loadFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.repos);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that.repos,_that.itemsPerPage);case _LoadInSuccess() when loadInSuccess != null:
return loadInSuccess(_that.repos,_that.isNextPageAvailable);case _LoadFailure() when loadFailure != null:
return loadFailure(_that.repos,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Initial extends StarredReposState {
  const _Initial(this.repos): super._();
  

@override final  Fresh<List<GithubRepo>> repos;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.repos, repos) || other.repos == repos));
}


@override
int get hashCode => Object.hash(runtimeType,repos);

@override
String toString() {
  return 'StarredReposState.initial(repos: $repos)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $StarredReposStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 Fresh<List<GithubRepo>> repos
});


@override $FreshCopyWith<List<GithubRepo>, $Res> get repos;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repos = null,}) {
  return _then(_Initial(
null == repos ? _self.repos : repos // ignore: cast_nullable_to_non_nullable
as Fresh<List<GithubRepo>>,
  ));
}

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreshCopyWith<List<GithubRepo>, $Res> get repos {
  
  return $FreshCopyWith<List<GithubRepo>, $Res>(_self.repos, (value) {
    return _then(_self.copyWith(repos: value));
  });
}
}

/// @nodoc


class _LoadInProgress extends StarredReposState {
  const _LoadInProgress(this.repos, this.itemsPerPage): super._();
  

@override final  Fresh<List<GithubRepo>> repos;
 final  int itemsPerPage;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadInProgressCopyWith<_LoadInProgress> get copyWith => __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInProgress&&(identical(other.repos, repos) || other.repos == repos)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage));
}


@override
int get hashCode => Object.hash(runtimeType,repos,itemsPerPage);

@override
String toString() {
  return 'StarredReposState.loadInProgress(repos: $repos, itemsPerPage: $itemsPerPage)';
}


}

/// @nodoc
abstract mixin class _$LoadInProgressCopyWith<$Res> implements $StarredReposStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) _then) = __$LoadInProgressCopyWithImpl;
@override @useResult
$Res call({
 Fresh<List<GithubRepo>> repos, int itemsPerPage
});


@override $FreshCopyWith<List<GithubRepo>, $Res> get repos;

}
/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(this._self, this._then);

  final _LoadInProgress _self;
  final $Res Function(_LoadInProgress) _then;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repos = null,Object? itemsPerPage = null,}) {
  return _then(_LoadInProgress(
null == repos ? _self.repos : repos // ignore: cast_nullable_to_non_nullable
as Fresh<List<GithubRepo>>,null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreshCopyWith<List<GithubRepo>, $Res> get repos {
  
  return $FreshCopyWith<List<GithubRepo>, $Res>(_self.repos, (value) {
    return _then(_self.copyWith(repos: value));
  });
}
}

/// @nodoc


class _LoadInSuccess extends StarredReposState {
  const _LoadInSuccess(this.repos, {required this.isNextPageAvailable}): super._();
  

@override final  Fresh<List<GithubRepo>> repos;
 final  bool isNextPageAvailable;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadInSuccessCopyWith<_LoadInSuccess> get copyWith => __$LoadInSuccessCopyWithImpl<_LoadInSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInSuccess&&(identical(other.repos, repos) || other.repos == repos)&&(identical(other.isNextPageAvailable, isNextPageAvailable) || other.isNextPageAvailable == isNextPageAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,repos,isNextPageAvailable);

@override
String toString() {
  return 'StarredReposState.loadInSuccess(repos: $repos, isNextPageAvailable: $isNextPageAvailable)';
}


}

/// @nodoc
abstract mixin class _$LoadInSuccessCopyWith<$Res> implements $StarredReposStateCopyWith<$Res> {
  factory _$LoadInSuccessCopyWith(_LoadInSuccess value, $Res Function(_LoadInSuccess) _then) = __$LoadInSuccessCopyWithImpl;
@override @useResult
$Res call({
 Fresh<List<GithubRepo>> repos, bool isNextPageAvailable
});


@override $FreshCopyWith<List<GithubRepo>, $Res> get repos;

}
/// @nodoc
class __$LoadInSuccessCopyWithImpl<$Res>
    implements _$LoadInSuccessCopyWith<$Res> {
  __$LoadInSuccessCopyWithImpl(this._self, this._then);

  final _LoadInSuccess _self;
  final $Res Function(_LoadInSuccess) _then;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repos = null,Object? isNextPageAvailable = null,}) {
  return _then(_LoadInSuccess(
null == repos ? _self.repos : repos // ignore: cast_nullable_to_non_nullable
as Fresh<List<GithubRepo>>,isNextPageAvailable: null == isNextPageAvailable ? _self.isNextPageAvailable : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreshCopyWith<List<GithubRepo>, $Res> get repos {
  
  return $FreshCopyWith<List<GithubRepo>, $Res>(_self.repos, (value) {
    return _then(_self.copyWith(repos: value));
  });
}
}

/// @nodoc


class _LoadFailure extends StarredReposState {
  const _LoadFailure(this.repos, this.failure): super._();
  

@override final  Fresh<List<GithubRepo>> repos;
 final  GithubFailure failure;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFailure&&(identical(other.repos, repos) || other.repos == repos)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,repos,failure);

@override
String toString() {
  return 'StarredReposState.loadFailure(repos: $repos, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$LoadFailureCopyWith<$Res> implements $StarredReposStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) _then) = __$LoadFailureCopyWithImpl;
@override @useResult
$Res call({
 Fresh<List<GithubRepo>> repos, GithubFailure failure
});


@override $FreshCopyWith<List<GithubRepo>, $Res> get repos;$GithubFailureCopyWith<$Res> get failure;

}
/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(this._self, this._then);

  final _LoadFailure _self;
  final $Res Function(_LoadFailure) _then;

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repos = null,Object? failure = null,}) {
  return _then(_LoadFailure(
null == repos ? _self.repos : repos // ignore: cast_nullable_to_non_nullable
as Fresh<List<GithubRepo>>,null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as GithubFailure,
  ));
}

/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreshCopyWith<List<GithubRepo>, $Res> get repos {
  
  return $FreshCopyWith<List<GithubRepo>, $Res>(_self.repos, (value) {
    return _then(_self.copyWith(repos: value));
  });
}/// Create a copy of StarredReposState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubFailureCopyWith<$Res> get failure {
  
  return $GithubFailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
