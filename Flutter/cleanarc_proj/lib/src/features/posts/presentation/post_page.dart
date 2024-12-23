import 'package:cleanarc_proj/di.dart';
import 'package:cleanarc_proj/src/features/posts/data/model/post_model.dart';
import 'package:cleanarc_proj/src/features/posts/domain/usecases/posts_usecases.dart';
import 'package:flutter/material.dart';


class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final postsUsecases = sl<PostsUsecases>(); //initializing post_usecases

  // final client = http.Client();

  List<PostModel> posts = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final data = await postsUsecases.fetchPosts();
    setState(() {
      posts=data;
    });
    // try {
    //   final response = await client
    //       .get(Uri.parse(ApiEndpoints.fetchPosts));
    //   if (response.statusCode == 200) {
    //     List<dynamic> list = jsonDecode(response.body);
    //     setState(() {
    //       posts = list.map((element) => PostModel.fromJson(element)).toList();
    //     });
    //   } else {
    //     print(response.statusCode);
    //     throw Exception('Failed to load posts');
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      // body: ListView(
      //   children: [Text(posts.toString())],
      // ),
      body: (posts.isEmpty)?
      const Center(child: CircularProgressIndicator(),)
      :ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
       return Card(
         child: ListTile(
            leading: Text('${posts[index].id}'),
            title: Text(posts[index].title),
            subtitle: Text(posts[index].body),
         
         
            ),
            
       );
       
      },
      itemCount: posts.length
      ),
    );
  }
}