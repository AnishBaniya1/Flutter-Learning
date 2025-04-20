import 'package:flutter/material.dart';
import 'package:tabbar_proj/src/pages/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}
