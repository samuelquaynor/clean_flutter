import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await runZonedGuarded<Future<void>>(() async {
    runApp(MaterialApp(
        // routes: Routes.routes,
        // home: authState ? const HomePage() : WelcomePage(),
        title: 'Heny',
        // darkTheme: darkTheme,
        // theme: lightTheme
        ));
  }, FirebaseCrashlytics.instance.recordError);
}