part of 'comment_bloc.dart';

class CommentState {
  CommentState(
      {required this.isLoading,
      required this.errorMessage,
      required this.commentmodel});
  bool isLoading;
  String? errorMessage;
  List<CommentModel>? commentmodel;

  factory CommentState.initial() {
    return CommentState(
        isLoading: true, errorMessage: null, commentmodel: null);
  }

  CommentState copyWith(
      {bool? isLoading,
      String? errorMessage,
      List<CommentModel>? commentmodel}) {
    return CommentState(
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage,
        commentmodel: commentmodel ?? this.commentmodel);
  }
}
