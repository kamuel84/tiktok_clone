// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commend_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommendController)
final commendControllerProvider = CommendControllerProvider._();

final class CommendControllerProvider
    extends $NotifierProvider<CommendController, bool> {
  CommendControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commendControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commendControllerHash();

  @$internal
  @override
  CommendController create() => CommendController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$commendControllerHash() => r'07f88d889b38317724042833ecaf850d77da050f';

abstract class _$CommendController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
