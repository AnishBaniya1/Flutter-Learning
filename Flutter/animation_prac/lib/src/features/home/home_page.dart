import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? pickedfile;
  // double height = 100;
  // double width = 100;
  // animate() {
  //   height = 200;
  //   width = 200;
  //   setState(() {});
  // }
  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        pickedfile = File(result.files.single.path!);
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedContainer(
            //   duration: Duration(seconds: 3),
            //   curve: Curves.decelerate,
            //   height: height,
            //   width: width,
            //   color: Colors.red,
            // ),
            if (pickedfile != null) Image.file(pickedfile!),
            ElevatedButton(onPressed: pickFile, child: Text('Pick file')),
          ],
        ),
      ),
    );
  }
}
