import 'package:flutter/material.dart';
import 'package:login_proj/src/core/routes/app_router.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) => AppRouter.route(settings),

    );
  }
}