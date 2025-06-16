import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Make sure to add carousel_slider to your pubspec.yaml
import 'package:flutter_screenutil/flutter_screenutil.dart'; // If you use .h for height, ensure flutter_screenutil is imported

class CarouselWithIndicator extends StatefulWidget {
  final List<String> carouselImages;
  const CarouselWithIndicator({super.key, required this.carouselImages});

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.carouselImages
              .map(
                (item) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 160.h,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 160.h,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            disableCenter: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        verticalSpace(12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.carouselImages.asMap().entries.map((entry) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == entry.key
                    ? ColorsManager.primaryColor
                    : Colors.grey.withOpacity(0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
