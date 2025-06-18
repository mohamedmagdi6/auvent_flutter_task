import 'package:hive_flutter/hive_flutter.dart';

import '../../model_dto/home_data_model.dart';

class HiveService {
  // Initialize Hive and open boxes here
  static const String userBoxName = 'home_user_box';
  static const String userBoxKey = 'home_user_key';
  Future<void> init() async {
    await Hive.initFlutter();
    HiveAdapters.registerAdapters();
    await Hive.openBox<HomeDataModel>(userBoxName);
  }

  Future<void> cacheHomeData(HomeDataModel user) async {
    final userBox = Hive.box<HomeDataModel>(userBoxName);
    await userBox.put(userBoxKey, user);
  }

  HomeDataModel? getCachedUser(String userId) {
    final userBox = Hive.box<HomeDataModel>(userBoxName);
    return userBox.get(userId);
  }

  //TODO - when logout is implemented, clear the cache
  Future<void> clearCache() async {
    final userBox = Hive.box<HomeDataModel>(userBoxName);
    await userBox.clear();
  }
}

class HiveAdapters {
  static void registerAdapters() {
    Hive.registerAdapter(HomeDataModelAdapter());
    Hive.registerAdapter(ServiceModelAdapter());
    Hive.registerAdapter(PopularRestaurantModelAdapter());
  }
}
