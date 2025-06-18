import 'package:auvent_flutter_task/data/model_dto/user_model_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  // Initialize Hive and open boxes here
  static const String userBoxName = 'userBox';
  static Future<void> init() async {
    await Hive.initFlutter();
    HiveAdapters.registerAdapters();
    await Hive.openBox<UserModelDto>(userBoxName);
  }

  static Future<void> cacheUser(UserModelDto user) async {
    final userBox = Hive.box<UserModelDto>(userBoxName);
    await userBox.put(user.id, user);
  }

  static UserModelDto? getCachedUser(String userId) {
    final userBox = Hive.box<UserModelDto>(userBoxName);
    return userBox.get(userId);
  }
}

class HiveAdapters {
  static void registerAdapters() {
    Hive.registerAdapter(UserModelDtoAdapter());
  }
}
