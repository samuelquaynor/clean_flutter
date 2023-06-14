import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';

import 'core/user/user_injection.dart';

/// Getter
final sl = GetIt.instance;

/// Initialize
void init() {
  //! Core
  initCore();
  //! Features
  initFeatures();
//! External
  initExternal();
}

/// Init features
void initFeatures() {}

/// Core files
void initCore() {
  // user
  initUser();
}

/// External packages
void initExternal() {
  sl
    ..registerLazySingleton<HiveInterface>(() => Hive)
    ..registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance)
    ..registerLazySingleton<FirebaseDatabase>(() => FirebaseDatabase.instance)
    ..registerLazySingleton<GoogleSignIn>(GoogleSignIn.new);
}
