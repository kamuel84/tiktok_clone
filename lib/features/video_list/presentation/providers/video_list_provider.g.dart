// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoList)
final videoListProvider = VideoListProvider._();

final class VideoListProvider
    extends $AsyncNotifierProvider<VideoList, List<VideoPost>> {
  VideoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoListHash();

  @$internal
  @override
  VideoList create() => VideoList();
}

String _$videoListHash() => r'3ffe290fba6b585dfbe7bcdbe11d09fcbd6c9736';

abstract class _$VideoList extends $AsyncNotifier<List<VideoPost>> {
  FutureOr<List<VideoPost>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<VideoPost>>, List<VideoPost>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<VideoPost>>, List<VideoPost>>,
              AsyncValue<List<VideoPost>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
