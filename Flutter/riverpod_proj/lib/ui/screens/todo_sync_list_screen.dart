import 'package:flutter/material.dart';

class TodoSyncListScreen extends StatelessWidget {
  const TodoSyncListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Sync List')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(title: Text("Todo Item $index"));
        },
      ),
    );
  }
}
