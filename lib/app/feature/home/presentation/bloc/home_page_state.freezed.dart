// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageState {

 String get succesMessage; String get errorMessage; List<ProductEntity> get products; Blocstatus get loadProductsStatus; int get skip; int get limit; int get total;
/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateCopyWith<HomePageState> get copyWith => _$HomePageStateCopyWithImpl<HomePageState>(this as HomePageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState&&(identical(other.succesMessage, succesMessage) || other.succesMessage == succesMessage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.loadProductsStatus, loadProductsStatus) || other.loadProductsStatus == loadProductsStatus)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,succesMessage,errorMessage,const DeepCollectionEquality().hash(products),loadProductsStatus,skip,limit,total);

@override
String toString() {
  return 'HomePageState(succesMessage: $succesMessage, errorMessage: $errorMessage, products: $products, loadProductsStatus: $loadProductsStatus, skip: $skip, limit: $limit, total: $total)';
}


}

/// @nodoc
abstract mixin class $HomePageStateCopyWith<$Res>  {
  factory $HomePageStateCopyWith(HomePageState value, $Res Function(HomePageState) _then) = _$HomePageStateCopyWithImpl;
@useResult
$Res call({
 String succesMessage, String errorMessage, List<ProductEntity> products, Blocstatus loadProductsStatus, int skip, int limit, int total
});




}
/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._self, this._then);

  final HomePageState _self;
  final $Res Function(HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? succesMessage = null,Object? errorMessage = null,Object? products = null,Object? loadProductsStatus = null,Object? skip = null,Object? limit = null,Object? total = null,}) {
  return _then(_self.copyWith(
succesMessage: null == succesMessage ? _self.succesMessage : succesMessage // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,loadProductsStatus: null == loadProductsStatus ? _self.loadProductsStatus : loadProductsStatus // ignore: cast_nullable_to_non_nullable
as Blocstatus,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePageState value)  $default,){
final _that = this;
switch (_that) {
case _HomePageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePageState value)?  $default,){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String succesMessage,  String errorMessage,  List<ProductEntity> products,  Blocstatus loadProductsStatus,  int skip,  int limit,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.succesMessage,_that.errorMessage,_that.products,_that.loadProductsStatus,_that.skip,_that.limit,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String succesMessage,  String errorMessage,  List<ProductEntity> products,  Blocstatus loadProductsStatus,  int skip,  int limit,  int total)  $default,) {final _that = this;
switch (_that) {
case _HomePageState():
return $default(_that.succesMessage,_that.errorMessage,_that.products,_that.loadProductsStatus,_that.skip,_that.limit,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String succesMessage,  String errorMessage,  List<ProductEntity> products,  Blocstatus loadProductsStatus,  int skip,  int limit,  int total)?  $default,) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.succesMessage,_that.errorMessage,_that.products,_that.loadProductsStatus,_that.skip,_that.limit,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _HomePageState implements HomePageState {
  const _HomePageState({this.succesMessage = '', this.errorMessage = '', final  List<ProductEntity> products = const [], this.loadProductsStatus = Blocstatus.initial, this.skip = 0, this.limit = 0, this.total = 0}): _products = products;
  

@override@JsonKey() final  String succesMessage;
@override@JsonKey() final  String errorMessage;
 final  List<ProductEntity> _products;
@override@JsonKey() List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  Blocstatus loadProductsStatus;
@override@JsonKey() final  int skip;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int total;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageStateCopyWith<_HomePageState> get copyWith => __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageState&&(identical(other.succesMessage, succesMessage) || other.succesMessage == succesMessage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.loadProductsStatus, loadProductsStatus) || other.loadProductsStatus == loadProductsStatus)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,succesMessage,errorMessage,const DeepCollectionEquality().hash(_products),loadProductsStatus,skip,limit,total);

@override
String toString() {
  return 'HomePageState(succesMessage: $succesMessage, errorMessage: $errorMessage, products: $products, loadProductsStatus: $loadProductsStatus, skip: $skip, limit: $limit, total: $total)';
}


}

/// @nodoc
abstract mixin class _$HomePageStateCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(_HomePageState value, $Res Function(_HomePageState) _then) = __$HomePageStateCopyWithImpl;
@override @useResult
$Res call({
 String succesMessage, String errorMessage, List<ProductEntity> products, Blocstatus loadProductsStatus, int skip, int limit, int total
});




}
/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(this._self, this._then);

  final _HomePageState _self;
  final $Res Function(_HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? succesMessage = null,Object? errorMessage = null,Object? products = null,Object? loadProductsStatus = null,Object? skip = null,Object? limit = null,Object? total = null,}) {
  return _then(_HomePageState(
succesMessage: null == succesMessage ? _self.succesMessage : succesMessage // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,loadProductsStatus: null == loadProductsStatus ? _self.loadProductsStatus : loadProductsStatus // ignore: cast_nullable_to_non_nullable
as Blocstatus,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
