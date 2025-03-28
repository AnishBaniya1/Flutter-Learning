import 'package:flutter/material.dart';
import 'package:sample_images/src/core/resources/resource.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello world'),
            Container(
              height: 200,
              width: 200,
              child: Image.asset(AppImage.image, fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
