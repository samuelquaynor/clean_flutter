import 'package:get_it/get_it.dart';

import 'data/database/user_local_database.dart';
import 'data/database/user_remote_database.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/sign_up.dart';

/// Add user dependency
void initUser() {
  final sl = GetIt.instance;
  sl
    //usecases
    // ..registerLazySingleton(() => Login(sl()))
    // ..registerLazySingleton(() => Logout(sl()))
    ..registerLazySingleton(() => SignUp(sl()))
    // ..registerLazySingleton(() => ValidateOTP(sl()))
    // ..registerLazySingleton(() => RetrieveUser(sl()))
    // ..registerLazySingleton(() => UpdateUser(sl()))
    // ..registerLazySingleton(() => SocialLogin(sl()))
    // Repository
    ..registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
        remoteDatabase: sl(), localDatabase: sl(), networkInfo: sl()))
    // database
    ..registerLazySingleton<UserLocalDatabase>(
        () => UserLocalDatabaseImpl(sl()))
    ..registerLazySingleton<UserRemoteDatabase>(
        () => UserRemoteDatabaseImpl(auth: sl(), database: sl()));
}
