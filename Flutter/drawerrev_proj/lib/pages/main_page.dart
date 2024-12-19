import 'package:drawerrev_proj/pages/cart_page.dart';
import 'package:drawerrev_proj/pages/home_page.dart';
import 'package:drawerrev_proj/pages/profile_page.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      drawer:  Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Container(
              
              color: Colors.amber,
            )),
            ListTile(
            onTap: () {
              
            },
              title:const Text('Home'),

            ),
               const ListTile(
              title: Text('Profile'),

            ),   const ListTile(
              title: Text('Cart'),

            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: changeIndex,
        items: const[
        BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Person'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: 'Cart'),



      ]),
      body:displaybody(currentIndex)
    );
    
  }
  displaybody(int index){
    switch(index){
      case 0:
      return const HomePage();
      case 1:
      return const ProfilePage();
      case 2:
      return const CartPage();
    }

  }
}