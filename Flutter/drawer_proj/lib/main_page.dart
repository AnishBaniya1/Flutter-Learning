import 'package:drawer_proj/pages/cart.dart';
import 'package:drawer_proj/pages/home_page.dart';
import 'package:drawer_proj/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  void changeIndex(int index){
    setState(() {
      currentIndex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Test Project'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child:Container(
              color:Colors.amber,

            ) ),
            const ListTile(
              title: Text('Home'),
            ),
            const ListTile(
              title: Text('FAQ'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
        onTap: (value){
          changeIndex(value);

        },
        items: const[
        BottomNavigationBarItem(icon:Icon(Icons.home) ,label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart) ,label: 'Cart'),
            BottomNavigationBarItem(icon:Icon(Icons.person) ,label: 'Profile'),
      ]),
      body:displaybody(currentIndex),
    );
  }

  displaybody(int index){
    switch(index){
      case 0:
      return const HomePage();
       case 1:
      return const CartPage();
       case 2:
      return const ProfilePage();



    }

  }
}
