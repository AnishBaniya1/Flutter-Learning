import 'package:bloc_api/src/features/posts/presentation/blocs/comment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<CommentBloc>()..add(CommentFetchEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Comment Page'),
        ),
        body: BlocBuilder<CommentBloc, CommentState>(
          buildWhen: (p, c) =>
              p.isLoading != c.isLoading || p.commentmodel != c.commentmodel,
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final comment = state.commentmodel![index];
                return Card(
                  child: ListTile(
                    leading: Text('${comment.id}'),
                    title: Text(comment.name),
                    subtitle: Text(comment.body),
                  ),
                );
              },
              itemCount: state.commentmodel!.length,
            );
          },
        ),
      ),
    );
  }
}
