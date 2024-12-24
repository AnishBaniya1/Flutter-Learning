import 'package:cleanarc_proj/src/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<PostBloc>()..add(PostFetchEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Post Page'),
        ),
        // body: ListView(
        //   children: [Text(posts.toString())],
        // ),
        body: BlocBuilder<PostBloc, PostState>(
          buildWhen: (p, c) =>
              p.isLoading != c.isLoading || p.postmodel != c.postmodel,
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final post = state.postmodel![index];
                return Card(
                  child: ListTile(
                    leading: Text('${post.id}'),
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  ),
                );
              },
              itemCount: state.postmodel!.length,
            );
          },
        ),
      ),
    );
  }
}
