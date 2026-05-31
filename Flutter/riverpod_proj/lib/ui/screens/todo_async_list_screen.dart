import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_proj/core/controllers/async_todolist_notifier.dart';

class TodoAsyncListScreen extends ConsumerWidget {
  const TodoAsyncListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncstate = ref.watch(asyncTodolistProvider);
    final stateNotifier = ref.read(asyncTodolistProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Todo Sync List')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stateNotifier.addTodoItem();
        },
        child: const Icon(Icons.add),
      ),
      body: asyncstate.when(
        error: (error, _) => Center(child: Text('Error:$error')),
        loading: () => Center(child: const CircularProgressIndicator()),
        data: (state) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              final item = state.items[index];
              return Dismissible(
                key: ValueKey("${item.title}$index"),
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                confirmDismiss: (_) {
                  stateNotifier.removeTodoItem(index);
                  return Future.value(true);
                },
                child: ListTile(onTap: () {}, title: Text(item.title)),
              );
            },
          );
        },
      ),
    );
  }
}
