import 'package:api_prac/src/features/post/data/model/add_post_model.dart';
import 'package:api_prac/src/features/post/data/model/post_model.dart';
import 'package:api_prac/src/features/post/domain/repo/post_repo.dart';

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
