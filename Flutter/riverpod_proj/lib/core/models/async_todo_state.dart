import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';

part 'async_todo_state.freezed.dart';

@freezed
sealed class AsyncTodoState with _$AsyncTodoState {
  const factory AsyncTodoState({required List<TodoItem> items}) =
      _AsyncTodoState;
}
