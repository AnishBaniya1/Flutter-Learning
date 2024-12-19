import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key,required this.name,required this.password});
  final String name;
  final String password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('MainPage'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: Center(
        child: Column(
          children: [
            Text('Name1:$name'),
            Text('Password:$password'),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          currentIndex: 0,
          onTap: (value) => {},
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Friends'),
            BottomNavigationBarItem(icon: Icon(Icons.inbox_sharp),label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: 'Profile'),
        ]),
    );
  }
}