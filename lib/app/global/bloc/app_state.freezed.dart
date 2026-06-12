// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {

 NetworkEnum get networkStatus; String get appBarTitle; String get appBarSubTitle; Blocstatus get logOutStatus; SesssionEventEnum get sessionManager;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&(identical(other.networkStatus, networkStatus) || other.networkStatus == networkStatus)&&(identical(other.appBarTitle, appBarTitle) || other.appBarTitle == appBarTitle)&&(identical(other.appBarSubTitle, appBarSubTitle) || other.appBarSubTitle == appBarSubTitle)&&(identical(other.logOutStatus, logOutStatus) || other.logOutStatus == logOutStatus)&&(identical(other.sessionManager, sessionManager) || other.sessionManager == sessionManager));
}


@override
int get hashCode => Object.hash(runtimeType,networkStatus,appBarTitle,appBarSubTitle,logOutStatus,sessionManager);

@override
String toString() {
  return 'AppState(networkStatus: $networkStatus, appBarTitle: $appBarTitle, appBarSubTitle: $appBarSubTitle, logOutStatus: $logOutStatus, sessionManager: $sessionManager)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 NetworkEnum networkStatus, String appBarTitle, String appBarSubTitle, Blocstatus logOutStatus, SesssionEventEnum sessionManager
});




}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? networkStatus = null,Object? appBarTitle = null,Object? appBarSubTitle = null,Object? logOutStatus = null,Object? sessionManager = null,}) {
  return _then(_self.copyWith(
networkStatus: null == networkStatus ? _self.networkStatus : networkStatus // ignore: cast_nullable_to_non_nullable
as NetworkEnum,appBarTitle: null == appBarTitle ? _self.appBarTitle : appBarTitle // ignore: cast_nullable_to_non_nullable
as String,appBarSubTitle: null == appBarSubTitle ? _self.appBarSubTitle : appBarSubTitle // ignore: cast_nullable_to_non_nullable
as String,logOutStatus: null == logOutStatus ? _self.logOutStatus : logOutStatus // ignore: cast_nullable_to_non_nullable
as Blocstatus,sessionManager: null == sessionManager ? _self.sessionManager : sessionManager // ignore: cast_nullable_to_non_nullable
as SesssionEventEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppState value)  $default,){
final _that = this;
switch (_that) {
case _AppState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppState value)?  $default,){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NetworkEnum networkStatus,  String appBarTitle,  String appBarSubTitle,  Blocstatus logOutStatus,  SesssionEventEnum sessionManager)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.networkStatus,_that.appBarTitle,_that.appBarSubTitle,_that.logOutStatus,_that.sessionManager);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NetworkEnum networkStatus,  String appBarTitle,  String appBarSubTitle,  Blocstatus logOutStatus,  SesssionEventEnum sessionManager)  $default,) {final _that = this;
switch (_that) {
case _AppState():
return $default(_that.networkStatus,_that.appBarTitle,_that.appBarSubTitle,_that.logOutStatus,_that.sessionManager);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NetworkEnum networkStatus,  String appBarTitle,  String appBarSubTitle,  Blocstatus logOutStatus,  SesssionEventEnum sessionManager)?  $default,) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.networkStatus,_that.appBarTitle,_that.appBarSubTitle,_that.logOutStatus,_that.sessionManager);case _:
  return null;

}
}

}

/// @nodoc


class _AppState implements AppState {
  const _AppState({this.networkStatus = NetworkEnum.initial, this.appBarTitle = '', this.appBarSubTitle = '', this.logOutStatus = Blocstatus.initial, this.sessionManager = SesssionEventEnum.initial});
  

@override@JsonKey() final  NetworkEnum networkStatus;
@override@JsonKey() final  String appBarTitle;
@override@JsonKey() final  String appBarSubTitle;
@override@JsonKey() final  Blocstatus logOutStatus;
@override@JsonKey() final  SesssionEventEnum sessionManager;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&(identical(other.networkStatus, networkStatus) || other.networkStatus == networkStatus)&&(identical(other.appBarTitle, appBarTitle) || other.appBarTitle == appBarTitle)&&(identical(other.appBarSubTitle, appBarSubTitle) || other.appBarSubTitle == appBarSubTitle)&&(identical(other.logOutStatus, logOutStatus) || other.logOutStatus == logOutStatus)&&(identical(other.sessionManager, sessionManager) || other.sessionManager == sessionManager));
}


@override
int get hashCode => Object.hash(runtimeType,networkStatus,appBarTitle,appBarSubTitle,logOutStatus,sessionManager);

@override
String toString() {
  return 'AppState(networkStatus: $networkStatus, appBarTitle: $appBarTitle, appBarSubTitle: $appBarSubTitle, logOutStatus: $logOutStatus, sessionManager: $sessionManager)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 NetworkEnum networkStatus, String appBarTitle, String appBarSubTitle, Blocstatus logOutStatus, SesssionEventEnum sessionManager
});




}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? networkStatus = null,Object? appBarTitle = null,Object? appBarSubTitle = null,Object? logOutStatus = null,Object? sessionManager = null,}) {
  return _then(_AppState(
networkStatus: null == networkStatus ? _self.networkStatus : networkStatus // ignore: cast_nullable_to_non_nullable
as NetworkEnum,appBarTitle: null == appBarTitle ? _self.appBarTitle : appBarTitle // ignore: cast_nullable_to_non_nullable
as String,appBarSubTitle: null == appBarSubTitle ? _self.appBarSubTitle : appBarSubTitle // ignore: cast_nullable_to_non_nullable
as String,logOutStatus: null == logOutStatus ? _self.logOutStatus : logOutStatus // ignore: cast_nullable_to_non_nullable
as Blocstatus,sessionManager: null == sessionManager ? _self.sessionManager : sessionManager // ignore: cast_nullable_to_non_nullable
as SesssionEventEnum,
  ));
}


}

// dart format on
