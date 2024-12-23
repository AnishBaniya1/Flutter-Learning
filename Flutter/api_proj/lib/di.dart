import 'package:api_proj/src/features/posts/data/repo_impl/comments_repo_impl.dart';
import 'package:api_proj/src/features/posts/data/sources/comments_remote_source.dart';
import 'package:api_proj/src/features/posts/domain/repo/comments_repo.dart';
import 'package:api_proj/src/features/posts/domain/usecases/comments_usecases.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initDependencies() {
  sources();
  repo();
  usecases();
}

void sources() {
  sl.registerLazySingleton<CommentsRemoteSource>(
    () => CommentsRemoteSource(),
  );
}

void repo() {
  sl.registerLazySingleton<CommentsRepository>(
    () => CommentsRepositoryImpl(sl()),
  );
}

void usecases() {
  sl.registerLazySingleton<CommentsUsecases>(
    () => CommentsUsecases(sl()),
  );
}



// GetIt as a storage room:

// GetIt is like a storage room where you keep all the ingredients 
//(dependencies) your restaurant needs (e.g., rice, vegetables, spices).
// Instead of fetching these ingredients every time from a supplier 
//(like creating new objects everywhere), you stock them once in the storage room (register them).
// Registering dependencies:

// In the morning, you organize the storage room with everything you’ll need for the day
// (e.g., register the CommentsRemoteSource, CommentsRepository, etc.).
// You make sure each section of the kitchen knows where to find what they need.
// Using dependencies:

// When the chef (your app) needs something (e.g., rice for a dish), they just call for it 
//(sl<>()), and the storage room provides it instantly.