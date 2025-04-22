import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/src/features/posts/presentation/provider/post_provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Page')),
      body: Consumer<PostProvider>(
        builder: (context, postProvider, child) {
          if (postProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: postProvider.posts.length,
            itemBuilder: (context, index) {
              final post = postProvider.posts[index];
              return Card(
                child: ListTile(
                  leading: Text('${post.id}'),
                  title: Text(post.title),
                  subtitle: Text(post.body),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Consumer<PostProvider>(
        builder: (context, postProvider, child) {
          return FloatingActionButton(
            onPressed: postProvider.createPost,
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}
