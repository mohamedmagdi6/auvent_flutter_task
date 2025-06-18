import 'package:hive/hive.dart';

part 'home_data_model.g.dart';

@HiveType(typeId: 0)
class HomeDataModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String address;
  @HiveField(2)
  final List<ServiceModel> service;
  @HiveField(3)
  final List<PopularRestaurantModel> popularRestaurant;

  HomeDataModel(
    this.name,
    this.address, {
    required this.service,
    required this.popularRestaurant,
  });

  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(
      (json['name'] as String?) ?? '',
      (json['address'] as String?) ?? '',
      service:
          (json['service'] as List?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      popularRestaurant:
          (json['restaurants'] as List?)
              ?.map(
                (e) =>
                    PopularRestaurantModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );
  }
}

@HiveType(typeId: 1)
class ServiceModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String discount;

  ServiceModel({required this.title, required this.discount});
  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: (json['title'] as String?) ?? '',
      discount: (json['discount'] as String?) ?? '',
    );
  }
}

@HiveType(typeId: 2)
class PopularRestaurantModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String time;

  PopularRestaurantModel({required this.title, required this.time});
  factory PopularRestaurantModel.fromJson(Map<String, dynamic> json) {
    return PopularRestaurantModel(
      title: (json['title'] as String?) ?? '',
      time: (json['time'] as String?) ?? '',
    );
  }
}
