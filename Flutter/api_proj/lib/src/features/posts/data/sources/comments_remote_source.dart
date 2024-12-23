import 'dart:convert';

import 'package:api_proj/src/core/config/api_endpoints.dart';
import 'package:http/http.dart' as http;

final client = http.Client();

class CommentsRemoteSource {
  Future<dynamic> getComments() async {
    final url = Uri.parse(ApiEndpoints.fetchComments);
    try {
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Could not fetch comments');
      }
    } catch (e) {
      throw Exception('Could not fetch comments');
    }
  }
}
