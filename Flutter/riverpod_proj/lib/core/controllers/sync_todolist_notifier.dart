import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_proj/core/models/sync_todo_state.dart';

part 'sync_todolist_notifier.g.dart';

@riverpod
class SyncTodolistNotifier extends _$SyncTodolistNotifier {
  @override
  SyncTodoState build() {
    return SyncTodoState(items: []);
  }
}
