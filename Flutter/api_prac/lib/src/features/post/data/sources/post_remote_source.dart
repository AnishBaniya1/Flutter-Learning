import 'dart:convert';

import 'package:api_prac/src/core/config/api_endpoints.dart';
import 'package:api_prac/src/features/post/data/model/add_post_model.dart';
import 'package:http/http.dart' as http;

final client = http.Client(); //You’ll use client to make the API call.

class PostRemoteSource {
  Future<dynamic> getPosts() async {
    final url = Uri.parse(ApiEndpoints.fetchPosts);
    try {
      final response = await client.get(url); //Hey server, give me the posts!
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Could not fetch Posts');
      }
    } catch (e) {
      throw Exception('Could not fetch Posts');
    }
  }

  Future<dynamic> createPosts() async {
    final url = Uri.parse(ApiEndpoints.fetchPosts);
    try {
      final response = await client.post(url);
      if (response.statusCode == 201) {
        final dynamic json = jsonDecode(response.body);

        return AddPostModel.fromJson(json);
      } else {
        throw Exception('Invalid Response');
      }
    } catch (e) {
      throw Exception('Could not fetch');
    }
  }
}
