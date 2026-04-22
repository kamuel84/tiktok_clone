// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_controllers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoControllersProvider)
final videoControllersProviderProvider = VideoControllersProviderProvider._();

final class VideoControllersProviderProvider
    extends
        $AsyncNotifierProvider<
          VideoControllersProvider,
          List<VideoPlayerController>
        > {
  VideoControllersProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoControllersProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoControllersProviderHash();

  @$internal
  @override
  VideoControllersProvider create() => VideoControllersProvider();
}

String _$videoControllersProviderHash() =>
    r'2be90d0c56aef5370d5ed7a110d8c9a550d76ec2';

abstract class _$VideoControllersProvider
    extends $AsyncNotifier<List<VideoPlayerController>> {
  FutureOr<List<VideoPlayerController>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<VideoPlayerController>>,
              List<VideoPlayerController>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<VideoPlayerController>>,
                List<VideoPlayerController>
              >,
              AsyncValue<List<VideoPlayerController>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
