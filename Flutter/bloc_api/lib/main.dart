import 'package:bloc_api/di.dart';
import 'package:bloc_api/src/features/home/presentation/home_page.dart';
import 'package:bloc_api/src/features/posts/presentation/blocs/comment_bloc.dart';
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
      create: (context) => sl<CommentBloc>(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
