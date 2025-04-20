import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('GridView Demo'))),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //items per row
          mainAxisSpacing: 10, //vertical space
          crossAxisSpacing: 10, // horizontal space
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            child: Center(
              child: Text('Item $index', style: TextStyle(fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
