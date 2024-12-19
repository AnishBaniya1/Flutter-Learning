import 'package:flutter/material.dart';
import 'package:store_proj/src/features/presentation/pages/home_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}