import 'package:faker/faker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/async_todo_state.dart';
import 'package:riverpod_proj/core/services/async_todo_service.dart';

part 'async_todolist_notifier.g.dart';

@riverpod
class AsyncTodolistNotifier extends _$AsyncTodolistNotifier {
  @override
  FutureOr<AsyncTodoState> build() async {
    final asyncTodoService = ref.read(asyncTodoServiceProvider);
    final data = await asyncTodoService.fetchTodoItems();
    return AsyncTodoState(items: data);
  }

  void addTodoItem() {
    final title = Faker().lorem.sentence();
    // state = state.copyWith(
    //   items: [
    //     ...state.items,
    //     TodoItem(title: title),
    //   ],
    // );
  }

  void removeTodoItem(int index) {
    // final updatedItems = List<TodoItem>.from(state.items)..removeAt(index);
    // state = state.copyWith(items: updatedItems);
  }
}
