import 'package:flutter/material.dart';
import 'package:nav_proj/src/features/home_page.dart';
import 'package:nav_proj/src/features/third_page.dart';

class AppRouter {
  static Route<dynamic> route (RouteSettings settings){
    switch(settings.name){
      case'/':
       return MaterialPageRoute(builder: (context)=>const HomePage());
      // case'/second':
      //  return MaterialPageRoute(builder: (context)=>const SecondPage());
      case'/third':
       return MaterialPageRoute(builder: (context)=>const ThirdPage());
      default:
       return MaterialPageRoute(builder: (context)=>const InvalidRoute());

    }

  }
}
class InvalidRoute extends StatelessWidget {
  const InvalidRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Invalid Route')),
    );
  }
}