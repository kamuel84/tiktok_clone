// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteCountModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'likesCount') int get likesCount;
/// Create a copy of FavoriteCountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCountModelCopyWith<FavoriteCountModel> get copyWith => _$FavoriteCountModelCopyWithImpl<FavoriteCountModel>(this as FavoriteCountModel, _$identity);

  /// Serializes this FavoriteCountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,likesCount);

@override
String toString() {
  return 'FavoriteCountModel(id: $id, likesCount: $likesCount)';
}


}

/// @nodoc
abstract mixin class $FavoriteCountModelCopyWith<$Res>  {
  factory $FavoriteCountModelCopyWith(FavoriteCountModel value, $Res Function(FavoriteCountModel) _then) = _$FavoriteCountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'likesCount') int likesCount
});




}
/// @nodoc
class _$FavoriteCountModelCopyWithImpl<$Res>
    implements $FavoriteCountModelCopyWith<$Res> {
  _$FavoriteCountModelCopyWithImpl(this._self, this._then);

  final FavoriteCountModel _self;
  final $Res Function(FavoriteCountModel) _then;

/// Create a copy of FavoriteCountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? likesCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteCountModel].
extension FavoriteCountModelPatterns on FavoriteCountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteCountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteCountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteCountModel value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteCountModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'likesCount')  int likesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteCountModel() when $default != null:
return $default(_that.id,_that.likesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'likesCount')  int likesCount)  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountModel():
return $default(_that.id,_that.likesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'likesCount')  int likesCount)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountModel() when $default != null:
return $default(_that.id,_that.likesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteCountModel extends FavoriteCountModel {
  const _FavoriteCountModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'likesCount') this.likesCount = 0}): super._();
  factory _FavoriteCountModel.fromJson(Map<String, dynamic> json) => _$FavoriteCountModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'likesCount') final  int likesCount;

/// Create a copy of FavoriteCountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCountModelCopyWith<_FavoriteCountModel> get copyWith => __$FavoriteCountModelCopyWithImpl<_FavoriteCountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteCountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,likesCount);

@override
String toString() {
  return 'FavoriteCountModel(id: $id, likesCount: $likesCount)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCountModelCopyWith<$Res> implements $FavoriteCountModelCopyWith<$Res> {
  factory _$FavoriteCountModelCopyWith(_FavoriteCountModel value, $Res Function(_FavoriteCountModel) _then) = __$FavoriteCountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'likesCount') int likesCount
});




}
/// @nodoc
class __$FavoriteCountModelCopyWithImpl<$Res>
    implements _$FavoriteCountModelCopyWith<$Res> {
  __$FavoriteCountModelCopyWithImpl(this._self, this._then);

  final _FavoriteCountModel _self;
  final $Res Function(_FavoriteCountModel) _then;

/// Create a copy of FavoriteCountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? likesCount = null,}) {
  return _then(_FavoriteCountModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
