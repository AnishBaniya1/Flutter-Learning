import 'package:faker/faker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';

part 'sync_todolist_notifier.g.dart';

@riverpod
class SyncTodolistNotifier extends _$SyncTodolistNotifier {
  @override
  SyncTodoState build() {
    return SyncTodoState(
      items: [
        TodoItem(title: 'Sample Todo 1'),
        TodoItem(title: 'Sample Todo 2'),
        TodoItem(title: 'Sample Todo 3'),
      ],
    );
  }

  void addTodoItem() {
    final title = Faker().lorem.sentence();
    state = state.copyWith(
      items: [
        ...state.items,
        TodoItem(title: title),
      ],
    );
  }

  void removeTodoItem(int index) {
    final updatedItems = List<TodoItem>.from(state.items)..removeAt(index);
    state = state.copyWith(items: updatedItems);
  }
}
