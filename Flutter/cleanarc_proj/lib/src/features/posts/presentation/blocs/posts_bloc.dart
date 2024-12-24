import 'package:cleanarc_proj/src/features/posts/data/model/post_model.dart';
import 'package:cleanarc_proj/src/features/posts/domain/usecases/posts_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(this._postsUsecases) : super(PostState.initial()) {
    on<PostFetchEvent>(_fetchPosts);
  }

  final PostsUsecases _postsUsecases;

  Future<void> _fetchPosts(
      PostFetchEvent event, Emitter<PostState> emit) async {
    emit(state.copyWith(isLoading: true));
    final response = await _postsUsecases.fetchPosts();
    emit(state.copyWith(isLoading: false, postmodel: response));
  }
}
