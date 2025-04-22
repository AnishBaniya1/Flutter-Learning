import 'package:provider_api/src/features/posts/data/sources/post_remote_source.dart';
import 'package:provider_api/src/features/posts/domain/repo/post_repo.dart';

class PostRepoImpl implements PostRepo {
  PostRepoImpl(this._postRemoteSource);
  final PostRemoteSource _postRemoteSource;

  @override
  Future<dynamic> fetchPosts() async {
    final data = await _postRemoteSource.getPosts();
    return data;
  }

  @override
  Future<dynamic> createPosts() async {
    return await _postRemoteSource.createPosts();
  }
}
