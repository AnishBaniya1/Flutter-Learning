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

// It’s a static method, which means you can call it without creating an instance of CommentModel.
// It takes a JSON object (a Map in Dart) as input and converts it into a CommentModel object.

// Imagine you’re building LEGO models:
// You receive a box of LEGO pieces (json object).
// The fromJson function is like an instruction manual that tells you how to assemble those pieces into a 
//completed model (CommentModel object).
// Once you follow the instructions (mapping JSON keys to object properties), you end up with a nice, 
//usable LEGO model (CommentModel object) instead of a random pile of pieces.