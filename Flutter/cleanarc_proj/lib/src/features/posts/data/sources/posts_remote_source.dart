import 'dart:convert';

import 'package:cleanarc_proj/src/core/config/api_endpoints.dart';
import 'package:http/http.dart' as http;

  final client = http.Client();

class PostsRemoteSource {
  Future<dynamic> getPosts ()async{
    final url = Uri.parse(ApiEndpoints.fetchPosts);
    try{
      final response = await client.get(url);
      if(response.statusCode==200 || response.statusCode==201){
        return jsonDecode(response.body);
      }else{
        throw Exception('Could not fetch');
      }
    } 
    catch(e){
      print(e.toString());

      throw Exception('Could not fetch');
    }
  }
}