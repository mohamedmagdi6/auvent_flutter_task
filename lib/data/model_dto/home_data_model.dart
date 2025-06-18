class HomeDataModel {
  final String name;
  final String address;
  final ServiceModel service;
  final PopularRestaurantModel popularRestaurant;

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
      service: ServiceModel(
        title: json['service']['title'] as String,
        discount: json['service']['discount'] as String,
      ),
      popularRestaurant: PopularRestaurantModel(
        title: json['popularRestaurant']['title'] as String,
        time: json['popularRestaurant']['time'] as String,
      ),
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
