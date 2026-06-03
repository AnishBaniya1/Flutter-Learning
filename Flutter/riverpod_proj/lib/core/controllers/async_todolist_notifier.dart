import 'package:faker/faker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/async_todo_state.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';
import 'package:riverpod_proj/core/services/async_todo_service.dart';

part 'async_todolist_notifier.g.dart';

@riverpod
class AsyncTodolistNotifier extends _$AsyncTodolistNotifier {
  AsyncTodoService get _asyncTodoService {
    return ref.read(asyncTodoServiceProvider);
  }

  @override
  FutureOr<AsyncTodoState> build() async {
    final data = await _asyncTodoService.fetchTodoItems();
    return AsyncTodoState(items: data);
  }

  Future<void> addTodoItem() async {
    state = AsyncLoading();

    try {
      final title = Faker().lorem.sentence();
      var newItem = TodoItem(
        id: DateTime.now().millisecondsSinceEpoch,
        title: title,
        completed: false,
      );

      final id = await _asyncTodoService.addTodoItem(newItem);
      newItem = newItem.copyWith(id: id);
      state = AsyncData(
        state.value!.copyWith(items: [...state.value!.items, newItem]),
      );
    } catch (e) {
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> removeTodoItem(int id) async {
    state = AsyncLoading();

    try {
      await _asyncTodoService.removeTodoItem(id);
      final data = await _asyncTodoService.fetchTodoItems();
      state = AsyncData(state.value!.copyWith(items: [...data]));
    } catch (e) {
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
