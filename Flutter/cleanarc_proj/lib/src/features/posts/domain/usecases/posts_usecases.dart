import 'package:cleanarc_proj/src/features/posts/data/model/post_model.dart';
import 'package:cleanarc_proj/src/features/posts/domain/repo/posts_repo.dart';

class PostsUsecases {
  PostsUsecases(this._postsRepository);
  final PostsRepository _postsRepository;

  Future <List<PostModel>> fetchPosts() async{
    final List<dynamic> data = await _postsRepository.fetchPosts();
    return data.map((e)=>PostModel.fromJson(e),
    )
    .toList();


  }
}