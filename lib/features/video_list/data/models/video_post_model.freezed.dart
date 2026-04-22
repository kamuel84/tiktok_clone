// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoPostModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'userName') String get userName;@JsonKey(name: 'caption') String get caption;@JsonKey(name: 'videoUrl') String get videoUrl;@JsonKey(name: 'thumbnailUrl') String get thumbnailUrl;@JsonKey(name: 'likesCount') int get likesCount;@JsonKey(name: 'commentsCount') int get commentsCount;@JsonKey(name: 'width') double? get width;@JsonKey(name: 'height') double? get height;
/// Create a copy of VideoPostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPostModelCopyWith<VideoPostModel> get copyWith => _$VideoPostModelCopyWithImpl<VideoPostModel>(this as VideoPostModel, _$identity);

  /// Serializes this VideoPostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userName,caption,videoUrl,thumbnailUrl,likesCount,commentsCount,width,height);

@override
String toString() {
  return 'VideoPostModel(id: $id, userName: $userName, caption: $caption, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, likesCount: $likesCount, commentsCount: $commentsCount, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $VideoPostModelCopyWith<$Res>  {
  factory $VideoPostModelCopyWith(VideoPostModel value, $Res Function(VideoPostModel) _then) = _$VideoPostModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'userName') String userName,@JsonKey(name: 'caption') String caption,@JsonKey(name: 'videoUrl') String videoUrl,@JsonKey(name: 'thumbnailUrl') String thumbnailUrl,@JsonKey(name: 'likesCount') int likesCount,@JsonKey(name: 'commentsCount') int commentsCount,@JsonKey(name: 'width') double? width,@JsonKey(name: 'height') double? height
});




}
/// @nodoc
class _$VideoPostModelCopyWithImpl<$Res>
    implements $VideoPostModelCopyWith<$Res> {
  _$VideoPostModelCopyWithImpl(this._self, this._then);

  final VideoPostModel _self;
  final $Res Function(VideoPostModel) _then;

/// Create a copy of VideoPostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userName = null,Object? caption = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? likesCount = null,Object? commentsCount = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPostModel].
extension VideoPostModelPatterns on VideoPostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoPostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoPostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoPostModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoPostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoPostModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoPostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'caption')  String caption, @JsonKey(name: 'videoUrl')  String videoUrl, @JsonKey(name: 'thumbnailUrl')  String thumbnailUrl, @JsonKey(name: 'likesCount')  int likesCount, @JsonKey(name: 'commentsCount')  int commentsCount, @JsonKey(name: 'width')  double? width, @JsonKey(name: 'height')  double? height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoPostModel() when $default != null:
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'caption')  String caption, @JsonKey(name: 'videoUrl')  String videoUrl, @JsonKey(name: 'thumbnailUrl')  String thumbnailUrl, @JsonKey(name: 'likesCount')  int likesCount, @JsonKey(name: 'commentsCount')  int commentsCount, @JsonKey(name: 'width')  double? width, @JsonKey(name: 'height')  double? height)  $default,) {final _that = this;
switch (_that) {
case _VideoPostModel():
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'caption')  String caption, @JsonKey(name: 'videoUrl')  String videoUrl, @JsonKey(name: 'thumbnailUrl')  String thumbnailUrl, @JsonKey(name: 'likesCount')  int likesCount, @JsonKey(name: 'commentsCount')  int commentsCount, @JsonKey(name: 'width')  double? width, @JsonKey(name: 'height')  double? height)?  $default,) {final _that = this;
switch (_that) {
case _VideoPostModel() when $default != null:
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoPostModel extends VideoPostModel {
  const _VideoPostModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userName') this.userName = '', @JsonKey(name: 'caption') this.caption = '', @JsonKey(name: 'videoUrl') this.videoUrl = '', @JsonKey(name: 'thumbnailUrl') this.thumbnailUrl = '', @JsonKey(name: 'likesCount') this.likesCount = 0, @JsonKey(name: 'commentsCount') this.commentsCount = 0, @JsonKey(name: 'width') this.width, @JsonKey(name: 'height') this.height}): super._();
  factory _VideoPostModel.fromJson(Map<String, dynamic> json) => _$VideoPostModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'userName') final  String userName;
@override@JsonKey(name: 'caption') final  String caption;
@override@JsonKey(name: 'videoUrl') final  String videoUrl;
@override@JsonKey(name: 'thumbnailUrl') final  String thumbnailUrl;
@override@JsonKey(name: 'likesCount') final  int likesCount;
@override@JsonKey(name: 'commentsCount') final  int commentsCount;
@override@JsonKey(name: 'width') final  double? width;
@override@JsonKey(name: 'height') final  double? height;

/// Create a copy of VideoPostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoPostModelCopyWith<_VideoPostModel> get copyWith => __$VideoPostModelCopyWithImpl<_VideoPostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoPostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userName,caption,videoUrl,thumbnailUrl,likesCount,commentsCount,width,height);

@override
String toString() {
  return 'VideoPostModel(id: $id, userName: $userName, caption: $caption, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, likesCount: $likesCount, commentsCount: $commentsCount, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$VideoPostModelCopyWith<$Res> implements $VideoPostModelCopyWith<$Res> {
  factory _$VideoPostModelCopyWith(_VideoPostModel value, $Res Function(_VideoPostModel) _then) = __$VideoPostModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'userName') String userName,@JsonKey(name: 'caption') String caption,@JsonKey(name: 'videoUrl') String videoUrl,@JsonKey(name: 'thumbnailUrl') String thumbnailUrl,@JsonKey(name: 'likesCount') int likesCount,@JsonKey(name: 'commentsCount') int commentsCount,@JsonKey(name: 'width') double? width,@JsonKey(name: 'height') double? height
});




}
/// @nodoc
class __$VideoPostModelCopyWithImpl<$Res>
    implements _$VideoPostModelCopyWith<$Res> {
  __$VideoPostModelCopyWithImpl(this._self, this._then);

  final _VideoPostModel _self;
  final $Res Function(_VideoPostModel) _then;

/// Create a copy of VideoPostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userName = null,Object? caption = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? likesCount = null,Object? commentsCount = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_VideoPostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
