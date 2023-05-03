import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

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
void initCore() {}

/// External packages
void initExternal() {
  sl..registerLazySingleton<HiveInterface>(() => Hive);
}
