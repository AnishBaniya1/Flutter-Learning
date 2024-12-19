import 'package:flutter/material.dart';
import 'package:nav_proj/src/features/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key,required this.name, required this.email, required this.password});
  final String name;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),

      ),
      body:  Center(
        child: Column(
          children: [
             Text('Name:$name'),
             Text('Email:$email'),
             Text('Password:$password'),
            const Text('Third Page'),
           ElevatedButton(
              onPressed:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const ThirdPage()));}
              , child: const Text('Third Page')),

          ],
        )),
    );
  }
}