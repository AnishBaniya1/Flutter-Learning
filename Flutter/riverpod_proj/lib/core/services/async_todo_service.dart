import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';

part 'async_todo_service.g.dart';

@Riverpod(keepAlive: true)
AsyncTodoService asyncTodoService(Ref ref) {
  return AsyncTodoService();
}

class AsyncTodoService {
  final _list = [
    TodoItem(id: 1, title: 'Buy Groceries', completed: false),
    TodoItem(id: 2, title: 'Walk Dog', completed: true),
    TodoItem(id: 3, title: 'Read Book', completed: false),
  ];
  Future<List<TodoItem>> fetchTodoItems() async {
    await Future.delayed(Duration(seconds: 2));
    return [..._list];
  }

  Future<int> addTodoItem(TodoItem item) async {
    await Future.delayed(Duration(seconds: 1));
    _list.add(item);
    return item.id;
  }

  Future<void> removeTodoItem(int id) async {
    await Future.delayed(Duration(seconds: 1));
    _list.removeWhere((item) => item.id == id);
  }
}
