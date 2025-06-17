import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/service_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ServiceItem(
          subtitle: 'Food',
          title: 'Up to 50%',
          imageUrl: ImageAssets.burger,
        ),
        horizontalSpace(16.w),
        ServiceItem(
          subtitle: 'Health & wellness',
          title: '20mins',
          imageUrl: ImageAssets.health,
        ),
        horizontalSpace(8.w),
        ServiceItem(
          subtitle: 'Groceries',
          title: '15 mins',
          imageUrl: ImageAssets.groceries,
        ),
      ],
    );
  }
}
