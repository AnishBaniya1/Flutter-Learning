import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  final List<String> imageUrls = List.generate(
    10,
    (index) => 'https://picsum.photos/id/${index + 10}/200/200',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('GridView Demo'))),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //items per row
          mainAxisSpacing: 10, //vertical space
          crossAxisSpacing: 10, // horizontal space
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: imageUrls[index],
                placeholder:
                    (context, url) =>
                        Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
