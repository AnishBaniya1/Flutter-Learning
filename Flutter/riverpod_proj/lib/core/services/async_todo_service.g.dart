// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_todo_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(asyncTodoService)
const asyncTodoServiceProvider = AsyncTodoServiceProvider._();

final class AsyncTodoServiceProvider
    extends
        $FunctionalProvider<
          AsyncTodoService,
          AsyncTodoService,
          AsyncTodoService
        >
    with $Provider<AsyncTodoService> {
  const AsyncTodoServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'asyncTodoServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$asyncTodoServiceHash();

  @$internal
  @override
  $ProviderElement<AsyncTodoService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AsyncTodoService create(Ref ref) {
    return asyncTodoService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncTodoService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncTodoService>(value),
    );
  }
}

String _$asyncTodoServiceHash() => r'42346b5dfbe005d396ccc6e6c40117f36dfc4d02';
