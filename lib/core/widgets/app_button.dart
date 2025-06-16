import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool withIcon;
  final void Function()? onPressed;
  final double? horizontalPadding;
  const AppButton({
    super.key,
    required this.text,
    this.withIcon = false,
    required this.onPressed,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 32.w),
      height: 52,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        iconAlignment: IconAlignment.end,
        icon: withIcon ? Image.asset(IconsAssets.arrowforward) : null,
        label: Text(text, style: TextStyles.textstyleS18W500White()),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: ColorsManager.primaryColor,
        ),
      ),
    );
  }
}
