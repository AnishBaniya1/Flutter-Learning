import 'package:flutter/material.dart';
import 'package:sample_images/src/core/theme/theme.dart';
import 'package:sample_images/src/features/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.theme, home: HomePage());
  }
}
