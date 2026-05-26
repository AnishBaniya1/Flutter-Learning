// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_todolist_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SyncTodolistNotifier)
const syncTodolistProvider = SyncTodolistNotifierProvider._();

final class SyncTodolistNotifierProvider
    extends $NotifierProvider<SyncTodolistNotifier, SyncTodoState> {
  const SyncTodolistNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'syncTodolistProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$syncTodolistNotifierHash();

  @$internal
  @override
  SyncTodolistNotifier create() => SyncTodolistNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SyncTodoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SyncTodoState>(value),
    );
  }
}

String _$syncTodolistNotifierHash() =>
    r'5f8b857ff8c4f26464345d837475f8f91aeaa76f';

abstract class _$SyncTodolistNotifier extends $Notifier<SyncTodoState> {
  SyncTodoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SyncTodoState, SyncTodoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SyncTodoState, SyncTodoState>,
              SyncTodoState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
