part of 'posts_bloc.dart';

class PostState {
  PostState(
      {required this.isLoading,
      required this.errorMessage,
      required this.postmodel});
  bool isLoading;
  String? errorMessage;
  List<PostModel>? postmodel;

  factory PostState.initial() {
    return PostState(isLoading: true, errorMessage: null, postmodel: null);
  }

  PostState copyWith(
      {bool? isLoading, String? errorMessage, List<PostModel>? postmodel}) {
    return PostState(
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage,
        postmodel: postmodel ?? this.postmodel);
  }
}
