// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoPost {

 String get id; String get userName; String get caption; String get videoUrl; String get thumbnailUrl; int get likesCount; int get commentsCount; bool get isLiked; double? get width; double? get height;
/// Create a copy of VideoPost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPostCopyWith<VideoPost> get copyWith => _$VideoPostCopyWithImpl<VideoPost>(this as VideoPost, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPost&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,id,userName,caption,videoUrl,thumbnailUrl,likesCount,commentsCount,isLiked,width,height);

@override
String toString() {
  return 'VideoPost(id: $id, userName: $userName, caption: $caption, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, likesCount: $likesCount, commentsCount: $commentsCount, isLiked: $isLiked, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $VideoPostCopyWith<$Res>  {
  factory $VideoPostCopyWith(VideoPost value, $Res Function(VideoPost) _then) = _$VideoPostCopyWithImpl;
@useResult
$Res call({
 String id, String userName, String caption, String videoUrl, String thumbnailUrl, int likesCount, int commentsCount, bool isLiked, double? width, double? height
});




}
/// @nodoc
class _$VideoPostCopyWithImpl<$Res>
    implements $VideoPostCopyWith<$Res> {
  _$VideoPostCopyWithImpl(this._self, this._then);

  final VideoPost _self;
  final $Res Function(VideoPost) _then;

/// Create a copy of VideoPost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userName = null,Object? caption = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? likesCount = null,Object? commentsCount = null,Object? isLiked = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPost].
extension VideoPostPatterns on VideoPost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoPost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoPost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoPost value)  $default,){
final _that = this;
switch (_that) {
case _VideoPost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoPost value)?  $default,){
final _that = this;
switch (_that) {
case _VideoPost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userName,  String caption,  String videoUrl,  String thumbnailUrl,  int likesCount,  int commentsCount,  bool isLiked,  double? width,  double? height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoPost() when $default != null:
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.isLiked,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userName,  String caption,  String videoUrl,  String thumbnailUrl,  int likesCount,  int commentsCount,  bool isLiked,  double? width,  double? height)  $default,) {final _that = this;
switch (_that) {
case _VideoPost():
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.isLiked,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userName,  String caption,  String videoUrl,  String thumbnailUrl,  int likesCount,  int commentsCount,  bool isLiked,  double? width,  double? height)?  $default,) {final _that = this;
switch (_that) {
case _VideoPost() when $default != null:
return $default(_that.id,_that.userName,_that.caption,_that.videoUrl,_that.thumbnailUrl,_that.likesCount,_that.commentsCount,_that.isLiked,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc


class _VideoPost implements VideoPost {
  const _VideoPost({required this.id, required this.userName, required this.caption, required this.videoUrl, required this.thumbnailUrl, required this.likesCount, required this.commentsCount, this.isLiked = false, this.width, this.height});
  

@override final  String id;
@override final  String userName;
@override final  String caption;
@override final  String videoUrl;
@override final  String thumbnailUrl;
@override final  int likesCount;
@override final  int commentsCount;
@override@JsonKey() final  bool isLiked;
@override final  double? width;
@override final  double? height;

/// Create a copy of VideoPost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoPostCopyWith<_VideoPost> get copyWith => __$VideoPostCopyWithImpl<_VideoPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoPost&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,id,userName,caption,videoUrl,thumbnailUrl,likesCount,commentsCount,isLiked,width,height);

@override
String toString() {
  return 'VideoPost(id: $id, userName: $userName, caption: $caption, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, likesCount: $likesCount, commentsCount: $commentsCount, isLiked: $isLiked, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$VideoPostCopyWith<$Res> implements $VideoPostCopyWith<$Res> {
  factory _$VideoPostCopyWith(_VideoPost value, $Res Function(_VideoPost) _then) = __$VideoPostCopyWithImpl;
@override @useResult
$Res call({
 String id, String userName, String caption, String videoUrl, String thumbnailUrl, int likesCount, int commentsCount, bool isLiked, double? width, double? height
});




}
/// @nodoc
class __$VideoPostCopyWithImpl<$Res>
    implements _$VideoPostCopyWith<$Res> {
  __$VideoPostCopyWithImpl(this._self, this._then);

  final _VideoPost _self;
  final $Res Function(_VideoPost) _then;

/// Create a copy of VideoPost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userName = null,Object? caption = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? likesCount = null,Object? commentsCount = null,Object? isLiked = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_VideoPost(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
