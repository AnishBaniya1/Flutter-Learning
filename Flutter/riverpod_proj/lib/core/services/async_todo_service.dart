import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';

part 'async_todo_service.g.dart';

@riverpod
AsyncTodoService asyncTodoService(Ref ref) {
  return AsyncTodoService();
}

class AsyncTodoService {
  Future<List<TodoItem>> fetchTodoItems() async {
    final list = [
      TodoItem(id: 1, title: 'Buy Groceries', completed: false),
      TodoItem(id: 2, title: 'Walk Dog', completed: true),
      TodoItem(id: 3, title: 'Read Book', completed: false),
    ];
    await Future.delayed(Duration(seconds: 2));
    return list;
  }
}
