class HomeDataModel {
  final String name;
  final String address;
  final List<ServiceModel> service;
  final List<PopularRestaurantModel> popularRestaurant;

  HomeDataModel(
    this.name,
    this.address, {
    required this.service,
    required this.popularRestaurant,
  });

  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(
      json['name'] as String,
      json['address'] as String,
      service: (json['service'] as List)
          .map((e) => ServiceModel.fromJson(e))
          .toList(),
      popularRestaurant: (json['popularRestaurant'] as List)
          .map((e) => PopularRestaurantModel.fromJson(e))
          .toList(),
    );
  }
}

class ServiceModel {
  final String title;
  final String discount;

  ServiceModel({required this.title, required this.discount});
  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: json['title'] as String,
      discount: json['discount'] as String,
    );
  }
}

class PopularRestaurantModel {
  final String title;
  final String time;

  PopularRestaurantModel({required this.title, required this.time});
  factory PopularRestaurantModel.fromJson(Map<String, dynamic> json) {
    return PopularRestaurantModel(
      title: json['title'] as String,
      time: json['time'] as String,
    );
  }
}
