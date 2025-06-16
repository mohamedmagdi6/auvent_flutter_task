import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularRestaurantsSection extends StatelessWidget {
  PopularRestaurantsSection({super.key});

  final List<Map<String, String>> restaurants = [
    {'name': 'Allo Beirut', 'time': '32 mins', 'image': ImageAssets.burger},
    {'name': 'Laffah', 'time': '38 mins', 'image': ImageAssets.burger},
    {
      'name': 'Falafil Al Rabiah Al kha...',
      'time': '44 mins',
      'image': ImageAssets.groceries,
    },
    {'name': 'Barbar', 'time': '34 mins', 'image': ImageAssets.health},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular restaurants nearby',
          style: TextStyles.textstyleS18W700BlackDmSans(),
        ),
        verticalSpace(12.h),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: restaurants.length,
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              final restaurant = restaurants[index];
              return Column(
                children: [
                  Container(
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      restaurant['image']!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  verticalSpace(4.h),
                  SizedBox(
                    width: 70,
                    child: Text(
                      restaurant['name']!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textstyleS12W700BlackDmSans(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 14,
                        color: Colors.grey,
                      ),
                      verticalSpace(4.h),
                      Text(
                        restaurant['time']!,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
