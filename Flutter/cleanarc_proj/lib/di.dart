import 'package:cleanarc_proj/src/features/posts/data/repo_impl/posts_repo_impl.dart';
import 'package:cleanarc_proj/src/features/posts/data/sources/posts_remote_source.dart';
import 'package:cleanarc_proj/src/features/posts/domain/repo/posts_repo.dart';
import 'package:cleanarc_proj/src/features/posts/domain/usecases/posts_usecases.dart';
import 'package:cleanarc_proj/src/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initDependencies() {
  sources();
  repo();
  usecases();
  blocs();
}

void sources() {
  sl.registerLazySingleton<PostsRemoteSource>(
    () => PostsRemoteSource(),
  );
}

void repo() {
  sl.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(sl()),
  );
}

void usecases() {
  sl.registerLazySingleton<PostsUsecases>(
    () => PostsUsecases(sl()),
  );
}

void blocs() {
  sl.registerLazySingleton<PostBloc>(
    () => PostBloc(sl()),
  );
}
