import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/data/hive_adapters.dart';
import 'core/presentation/widgets/routes.dart';
import 'core/user/data/database/user_local_database.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/welcome/presentation/pages/welcome_page.dart';
import 'firebase_options.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final authState = await di.sl<UserLocalDatabase>().authenticationStatus();
  di.init();
  await HiveAdapters.setUp();
  await runZonedGuarded<Future<void>>(() async {
    runApp(MaterialApp(
      routes: Routes.route(),
      debugShowCheckedModeBanner: false,
      home: authState ? const HomePage() : const WelcomePage(),
      title: 'Twitter',
      onGenerateRoute: Routes.onGenerateRoute,
      onUnknownRoute: Routes.onUnknownRoute,
      initialRoute: 'WelcomePage',
      // darkTheme: darkTheme,
      // theme: lightTheme
    ));
  }, FirebaseCrashlytics.instance.recordError);
}
