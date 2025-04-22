import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/src/features/posts/presentation/post_page.dart';
import 'package:provider_api/src/features/posts/presentation/provider/post_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (_) => ChangeNotifierProvider(
                          create: (_) => PostProvider()..getallPosts(),
                          child: PostPage(),
                        ),
                  ),
                );
              },
              child: Text('See Comments'),
            ),
          ],
        ),
      ),
    );
  }
}
