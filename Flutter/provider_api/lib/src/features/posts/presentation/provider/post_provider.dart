import 'package:flutter/material.dart';
import 'package:provider_api/src/features/posts/data/model/add_post_model.dart';
import 'package:provider_api/src/features/posts/data/model/post_model.dart';
import 'package:provider_api/src/features/posts/data/repo_impl/post_repo_impl.dart';
import 'package:provider_api/src/features/posts/data/sources/post_remote_source.dart';
import 'package:provider_api/src/features/posts/domain/usecases/post_usecases.dart';

class PostProvider with ChangeNotifier {
  final PostUsecases _usecases = PostUsecases(PostRepoImpl(PostRemoteSource()));
  List<PostModel> _posts = [];
  bool isLoading = false;
  List<PostModel> get posts => _posts;

  Future<void> getallPosts() async {
    isLoading = true;
    notifyListeners();
    final response = await _usecases.fetchPosts();
    _posts = response;
    isLoading = false;
    notifyListeners();
  }

  Future<void> createPost() async {
    final newPost = AddPostModel(
      id: _posts.length + 1,
      title: 'LOCAL POST - Not From API',
      body: 'This implements http.post method.',
    );

    final postModel = PostModel(
      userId: 101,
      id: newPost.id,
      title: newPost.title,
      body: newPost.body,
    );
    _posts.add(postModel);
    notifyListeners();
  }
}
