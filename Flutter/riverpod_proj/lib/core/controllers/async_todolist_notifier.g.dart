// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_todolist_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AsyncTodolistNotifier)
const asyncTodolistProvider = AsyncTodolistNotifierProvider._();

final class AsyncTodolistNotifierProvider
    extends $AsyncNotifierProvider<AsyncTodolistNotifier, AsyncTodoState> {
  const AsyncTodolistNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'asyncTodolistProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$asyncTodolistNotifierHash();

  @$internal
  @override
  AsyncTodolistNotifier create() => AsyncTodolistNotifier();
}

String _$asyncTodolistNotifierHash() =>
    r'8a5924a8c020a571eea741ea5deb2e4b8229e9cd';

abstract class _$AsyncTodolistNotifier extends $AsyncNotifier<AsyncTodoState> {
  FutureOr<AsyncTodoState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AsyncTodoState>, AsyncTodoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AsyncTodoState>, AsyncTodoState>,
              AsyncValue<AsyncTodoState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
