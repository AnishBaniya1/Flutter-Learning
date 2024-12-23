import 'package:api_proj/src/features/posts/data/model/comment_model.dart';
import 'package:api_proj/src/features/posts/domain/repo/comments_repo.dart';

class CommentsUsecases {
  CommentsUsecases(this._commentsRepository);
  final CommentsRepository _commentsRepository;

  Future<List<CommentModel>> fetchComments() async {
    final List<dynamic> data = await _commentsRepository.fetchComments();
    return data
        .map(
          (e) => CommentModel.fromJson(e),
        )
        .toList();
  }
}


// You have a repository (_commentsRepository) that gives you raw materials (raw JSON data representing posts).
// But your app doesn't want raw materials—it wants something polished and ready to use.
// The use case (CommentsUsecases) is like a factory that takes the raw materials, processes 
//them (converts JSON to CommentModel objects), and gives back a finished product (a list of CommentModel objects).