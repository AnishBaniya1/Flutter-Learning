import 'package:api_proj/src/features/posts/data/sources/comments_remote_source.dart';
import 'package:api_proj/src/features/posts/domain/repo/comments_repo.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  CommentsRepositoryImpl(this._commentsRemoteSource);
  final CommentsRemoteSource _commentsRemoteSource;

  @override
  Future<dynamic> fetchComments() async {
    final data = await _commentsRemoteSource.getComments();
    return data;
  }
}




// You (the app) want to fetch some blog comments.
// Instead of fetching the posts directly from the internet, you send a request to your middleman (CommentssRepositoryImpl).
// The middleman doesn't actually fetch the posts themselves. Instead, they forward the request to a 
//remote source (_commentsRemoteSource), which is responsible for doing the hard work of contacting the internet or server.
// Once the remote source gets the posts, it sends them back to the middleman, who then hands them back to you.