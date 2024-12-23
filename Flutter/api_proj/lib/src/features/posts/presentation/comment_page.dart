import 'package:api_proj/di.dart';
import 'package:api_proj/src/features/posts/data/model/comment_model.dart';
import 'package:api_proj/src/features/posts/domain/usecases/comments_usecases.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final commentsUsecases = sl<CommentsUsecases>();
  List<CommentModel> comments = [];
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final data = await commentsUsecases.fetchComments();
    setState(() {
      comments = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment Page'),
      ),
      body: (comments.isEmpty)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text('${comments[index].id}'),
                    title: Text(comments[index].name),
                    subtitle: Text(comments[index].body),
                  ),
                );
              },
              itemCount: comments.length,
            ),
    );
  }
}
