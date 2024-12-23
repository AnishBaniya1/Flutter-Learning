import 'package:cleanarc_proj/di.dart';
import 'package:cleanarc_proj/src/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
   initDependencies();
  runApp(App());
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