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
        isAutoDispose: false,
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

String _$asyncTodoServiceHash() => r'4f41131978156ba11623399962d1a50e6cb397fd';
