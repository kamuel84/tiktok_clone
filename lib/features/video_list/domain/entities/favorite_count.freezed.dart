// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteCount {

 String get id; int get favoriteCount;
/// Create a copy of FavoriteCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCountCopyWith<FavoriteCount> get copyWith => _$FavoriteCountCopyWithImpl<FavoriteCount>(this as FavoriteCount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteCount&&(identical(other.id, id) || other.id == id)&&(identical(other.favoriteCount, favoriteCount) || other.favoriteCount == favoriteCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,favoriteCount);

@override
String toString() {
  return 'FavoriteCount(id: $id, favoriteCount: $favoriteCount)';
}


}

/// @nodoc
abstract mixin class $FavoriteCountCopyWith<$Res>  {
  factory $FavoriteCountCopyWith(FavoriteCount value, $Res Function(FavoriteCount) _then) = _$FavoriteCountCopyWithImpl;
@useResult
$Res call({
 String id, int favoriteCount
});




}
/// @nodoc
class _$FavoriteCountCopyWithImpl<$Res>
    implements $FavoriteCountCopyWith<$Res> {
  _$FavoriteCountCopyWithImpl(this._self, this._then);

  final FavoriteCount _self;
  final $Res Function(FavoriteCount) _then;

/// Create a copy of FavoriteCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? favoriteCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,favoriteCount: null == favoriteCount ? _self.favoriteCount : favoriteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteCount].
extension FavoriteCountPatterns on FavoriteCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteCount value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteCount value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int favoriteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteCount() when $default != null:
return $default(_that.id,_that.favoriteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int favoriteCount)  $default,) {final _that = this;
switch (_that) {
case _FavoriteCount():
return $default(_that.id,_that.favoriteCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int favoriteCount)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteCount() when $default != null:
return $default(_that.id,_that.favoriteCount);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteCount implements FavoriteCount {
  const _FavoriteCount({required this.id, required this.favoriteCount});
  

@override final  String id;
@override final  int favoriteCount;

/// Create a copy of FavoriteCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCountCopyWith<_FavoriteCount> get copyWith => __$FavoriteCountCopyWithImpl<_FavoriteCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteCount&&(identical(other.id, id) || other.id == id)&&(identical(other.favoriteCount, favoriteCount) || other.favoriteCount == favoriteCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,favoriteCount);

@override
String toString() {
  return 'FavoriteCount(id: $id, favoriteCount: $favoriteCount)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCountCopyWith<$Res> implements $FavoriteCountCopyWith<$Res> {
  factory _$FavoriteCountCopyWith(_FavoriteCount value, $Res Function(_FavoriteCount) _then) = __$FavoriteCountCopyWithImpl;
@override @useResult
$Res call({
 String id, int favoriteCount
});




}
/// @nodoc
class __$FavoriteCountCopyWithImpl<$Res>
    implements _$FavoriteCountCopyWith<$Res> {
  __$FavoriteCountCopyWithImpl(this._self, this._then);

  final _FavoriteCount _self;
  final $Res Function(_FavoriteCount) _then;

/// Create a copy of FavoriteCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? favoriteCount = null,}) {
  return _then(_FavoriteCount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,favoriteCount: null == favoriteCount ? _self.favoriteCount : favoriteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
