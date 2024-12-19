import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final client = http.Client();

  List<dynamic> posts = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    try {
      final response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        List<dynamic> list = jsonDecode(response.body);
        setState(() {
          posts = list;
        });
      } else {
        print(response.statusCode);
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: ListView(
        children: [Text(posts.toString())],
      ),
    );
  }
}