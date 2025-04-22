import 'package:api_prac/src/features/post/data/model/add_post_model.dart';
import 'package:api_prac/src/features/post/data/model/post_model.dart';
import 'package:api_prac/src/features/post/data/repo_impl/post_repo_impl.dart';
import 'package:api_prac/src/features/post/data/sources/post_remote_source.dart';
import 'package:api_prac/src/features/post/domain/usecases/post_usecases.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final postUsecases = PostUsecases(PostRepoImpl(PostRemoteSource()));
  List<PostModel> posts = [];

  void addNewPost() async {
    final newPost = AddPostModel(
      id: posts.length + 1,
      title: ' LOCAL POST - Not From API ',
      body: 'This implements http.post method.',
    );
    final postModel = PostModel(
      userId: 101,
      id: newPost.id,
      title: newPost.title,
      body: newPost.body,
    );
    setState(() {
      posts.insert(0, postModel);
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final data = await postUsecases.fetchPosts();

    setState(() {
      posts = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Page')),
      body:
          (posts.isEmpty)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text('${posts[index].id}'),
                      title: Text(posts[index].title),
                      subtitle: Text(posts[index].body),
                    ),
                  );
                },
                itemCount: posts.length,
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewPost,
        child: Icon(Icons.add),
      ),
    );
  }
}
