import 'package:expansion_proj/src/pages/child_page1.dart';
import 'package:expansion_proj/src/pages/home_page.dart';
import 'package:expansion_proj/src/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Menu in Flutter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Container(color: Colors.amber)),
            ExpansionTile(
              //this creates a widget that expands/collapse when clicked
              title: Text('Parent Category 1'),
              leading: Icon(
                Icons.person,
              ), //icon or widget shown before the title
              childrenPadding: EdgeInsets.only(left: 60),
              children: [
                //the list of widgets shown when the tile is expanded
                ListTile(
                  title: Text('Child Category 1'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChildPage1()),
                    );
                  },
                ),
                ListTile(title: Text('Child Category 2'), onTap: () {}),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          changeIndex(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: displaybody(currentIndex),
    );
  }

  displaybody(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return ProfilePage();
    }
  }
}
