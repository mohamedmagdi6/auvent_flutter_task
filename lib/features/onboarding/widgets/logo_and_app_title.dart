import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndAppTitle extends StatelessWidget {
  const LogoAndAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg'),
        SizedBox(width: 10.w),
        Text('Docdoc', style: TextStyles.textstyleS24W700Black()),
      ],
    );
  }
}
