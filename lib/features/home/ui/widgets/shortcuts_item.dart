import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShortcutsItem extends StatelessWidget {
  const ShortcutsItem({super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 65,
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 7,
            decoration: BoxDecoration(
              color: ColorsManager.lightOrangeColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: SvgPicture.asset(imageUrl, width: 32.w, height: 32),
          ),
          verticalSpace(8.h),
          Text(
            title,
            style: TextStyles.textstyleS12W700BlackDmSans(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
