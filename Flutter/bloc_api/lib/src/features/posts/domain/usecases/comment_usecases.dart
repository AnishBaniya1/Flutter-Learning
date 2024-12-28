import 'package:bloc_api/src/features/posts/data/model/comment_model.dart';
import 'package:bloc_api/src/features/posts/domain/repo/comment_repo.dart';

class CommentUsecases {
  CommentUsecases(this._commentRepository);
  final CommentRepository _commentRepository;

  Future<dynamic> fetchComments() async {
    final List<dynamic> data = await _commentRepository.fetchComments();
    return data
        .map(
          (e) => CommentModel.fromJson(e),
        )
        .toList();
  }
}
