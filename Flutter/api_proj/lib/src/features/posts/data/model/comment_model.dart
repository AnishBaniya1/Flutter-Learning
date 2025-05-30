class CommentModel {
  CommentModel(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  static CommentModel fromJson(Map<String, dynamic> json) {
    return CommentModel(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }
}
