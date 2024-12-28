import 'package:bloc_api/src/features/posts/data/repo_impl/comment_repo_impl.dart';
import 'package:bloc_api/src/features/posts/data/sources/comment_remote_source.dart';
import 'package:bloc_api/src/features/posts/domain/repo/comment_repo.dart';
import 'package:bloc_api/src/features/posts/domain/usecases/comment_usecases.dart';
import 'package:bloc_api/src/features/posts/presentation/blocs/comment_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initDependencies() {
  sources();
  repo();
  usecases();
  blocs();
}

void sources() {
  sl.registerLazySingleton<CommentRemoteSource>(
    () => CommentRemoteSource(),
  );
}

void repo() {
  sl.registerLazySingleton<CommentRepository>(
    () => CommentRepositoryImpl(sl()),
  );
}

void usecases() {
  sl.registerLazySingleton<CommentUsecases>(
    () => CommentUsecases(sl()),
  );
}

void blocs() {
  sl.registerLazySingleton<CommentBloc>(
    () => CommentBloc(sl()),
  );
}
