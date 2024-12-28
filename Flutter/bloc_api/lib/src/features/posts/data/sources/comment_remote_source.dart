import 'dart:convert';

import 'package:bloc_api/src/core/config/api_endpoints.dart';
import 'package:http/http.dart' as http;

final client = http.Client();

class CommentRemoteSource {
  Future<dynamic> getComments() async {
    final url = Uri.parse(ApiEndpoints.fetchComments);
    try {
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('could not fetch data');
      }
    } catch (e) {
      throw Exception('Could not fetch data');
    }
  }
}

// The CommentRemoteSource class is like a helper that fetches comments from an online server. Here's how it works:

// Find the URL: It uses ApiEndpoints.fetchComments to find the address of the server where the comments are stored.
// Send a GET request: It asks the server for the data using the URL.
// Check the response:
// If the server replies with "Success," it processes the data and gives it back to you.
// If the server says "Error," it throws an error.
// Handle problems: If the request fails (e.g., no internet), it catches the error and throws an exception.
