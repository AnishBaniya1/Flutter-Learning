import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_todo_state.freezed.dart';

@freezed
sealed class SyncTodoState with _$SyncTodoState {
  const factory SyncTodoState({required List<TodoItem> items}) = _SyncTodoState;
}

@freezed
sealed class TodoItem with _$TodoItem {
  const factory TodoItem({
    required int id,
    required String title,
    @Default(false) bool completed,
  }) = _TodoItem;
}
