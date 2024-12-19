import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? username;
  String? password;

  //  readData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     username = prefs.getString('username');
  //     password = prefs.getString('password');
  //   });
  // }

  // @override
  // void initState() {
  //   readData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Password: $password',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
