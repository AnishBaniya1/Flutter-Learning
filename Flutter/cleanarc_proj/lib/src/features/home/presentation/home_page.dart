import 'package:cleanarc_proj/src/core/extensions/context_extension.dart';
import 'package:cleanarc_proj/src/features/posts/presentation/post_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello world'),
            ElevatedButton(onPressed: (){
              context.push(const PostPage());
            }, child: Text('Page')),
          ],
        )
        ),
    );
  }
}