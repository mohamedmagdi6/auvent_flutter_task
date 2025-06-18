import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
  final String title;
  final String subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: ColorsManager.lighterGray.withAlpha(150),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.fill,
            height: 40.h,
            width: 40.w,
          ),
        ),
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: ColorsManager.primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(title, style: TextStyles.textstyleS12W500WhiteDmSans()),
        ),
        SizedBox(
          width: 80.w,
          child: Text(
            subtitle,
            style: TextStyles.textstyleS14W500BlackDmSans(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
