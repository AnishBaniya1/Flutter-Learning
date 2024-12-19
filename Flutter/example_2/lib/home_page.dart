import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isred = true;
  double redHeight = 0;
  double greenHeight = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                redHeight++;
                greenHeight--;
              });
            },
            child: Container(
              height: (MediaQuery.of(context).size.height / 2)+ greenHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                redHeight--;
                greenHeight++;
              });
            },
            child: Container(
              height: (MediaQuery.of(context).size.height / 2) + redHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ));
  }
}