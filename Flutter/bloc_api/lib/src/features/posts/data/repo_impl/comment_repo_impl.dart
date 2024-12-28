import 'package:bloc_api/src/features/posts/data/sources/comment_remote_source.dart';
import 'package:bloc_api/src/features/posts/domain/repo/comment_repo.dart';

class CommentRepositoryImpl implements CommentRepository {
  CommentRepositoryImpl(this._commentRemoteSource);
  final CommentRemoteSource _commentRemoteSource;

  @override
  Future<dynamic> fetchComments() async {
    final data = await _commentRemoteSource.getComments();
    return data;
  }
}
