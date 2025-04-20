import 'package:flutter/material.dart';

class ChildPage1 extends StatelessWidget {
  const ChildPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text('Hello!'))],
      ),
    );
  }
}
