import 'package:api_proj/src/core/extensions/context_extension.dart';
import 'package:api_proj/src/features/posts/presentation/comment_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Page'),
            ElevatedButton(
                onPressed: () {
                  context.push(CommentPage());
                },
                child: Text('See Comments')),
          ],
        ),
      ),
    );
  }
}
