import 'package:cleanarc_proj/src/features/posts/data/sources/posts_remote_source.dart';
import 'package:cleanarc_proj/src/features/posts/domain/repo/posts_repo.dart';

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl(this._postsRemoteSource);
  final PostsRemoteSource _postsRemoteSource;
  
  @override
  Future<dynamic> fetchPosts()async {
    final data = await _postsRemoteSource.getPosts();
    return data;
   
  }
}