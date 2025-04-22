import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/src/features/home/presentation/home_page.dart';
import 'package:provider_api/src/features/posts/presentation/provider/post_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => PostProvider())],
      child: MaterialApp(home: HomePage()),
    );
  }
}
