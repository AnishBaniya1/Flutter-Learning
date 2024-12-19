import 'package:flutter/material.dart';
import 'package:login_proj/src/features/login_page.dart';

class AppRouter {
  static Route<dynamic> route (RouteSettings settings){
    switch(settings.name){
      case'/':
       return MaterialPageRoute(builder: (context)=>const LoginPage());
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
      body: Text('Invalid Route'),
    );
  }
}