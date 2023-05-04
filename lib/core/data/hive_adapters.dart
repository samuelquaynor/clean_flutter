import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../user/domain/entities/user_entity.dart';

class HiveAdapters {
  static const user = 0;

  /// Initialize adapters when app starts
  static Future<void> setUp() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive
      ..init(appDocumentDirectory.path)
      ..registerAdapter<UserEntity>(UserEntityAdapter());
  }
}
