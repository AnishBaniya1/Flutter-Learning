import 'package:provider_api/src/features/posts/data/model/add_post_model.dart';
import 'package:provider_api/src/features/posts/data/model/post_model.dart';
import 'package:provider_api/src/features/posts/domain/repo/post_repo.dart';

class PostUsecases {
  PostUsecases(this._postRepo);
  final PostRepo _postRepo;

  Future<List<PostModel>> fetchPosts() async {
    final List<dynamic> data = await _postRepo.fetchPosts();
    return data.map((e) => PostModel.fromJson(e)).toList();
  }

  Future<AddPostModel> createPosts() async {
    return await _postRepo.createPosts();
  }
}
