import 'package:bloc_api/src/features/posts/data/model/comment_model.dart';
import 'package:bloc_api/src/features/posts/domain/usecases/comment_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc(this._commentUsecases) : super(CommentState.initial()) {
    on<CommentFetchEvent>(_fetchComments);
  }
  final CommentUsecases _commentUsecases;

  Future<void> _fetchComments(
      CommentFetchEvent event, Emitter<CommentState> emit) async {
    emit(state.copyWith(isLoading: true));
    final response = await _commentUsecases.fetchComments();
    emit(state.copyWith(isLoading: false, commentmodel: response));
  }
}
