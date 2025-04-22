class AddPostModel {
  AddPostModel({required this.id, required this.title, required this.body});
  final int id;
  final String title;
  final String body;
  static fromJson(Map<String, dynamic> json) {
    return AddPostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
