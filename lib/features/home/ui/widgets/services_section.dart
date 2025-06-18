import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/service_item.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key, required this.services});
  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: services
          .map(
            (service) => ServiceItem(
              imageUrl: ImageAssets.burger,
              title: service.title,
              subtitle: service.discount,
            ),
          )
          .toList(),
    );
  }
}
