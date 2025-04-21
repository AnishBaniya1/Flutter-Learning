import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/pages/counter.dart';
import 'package:provider_prac/pages/counter_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(home: CounterPage()),
    );
  }
}
