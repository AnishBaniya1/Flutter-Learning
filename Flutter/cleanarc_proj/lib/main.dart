import 'package:cleanarc_proj/di.dart';
import 'package:cleanarc_proj/src/features/home/presentation/home_page.dart';
import 'package:cleanarc_proj/src/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PostBloc>(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
