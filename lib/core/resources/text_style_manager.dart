import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  //blackColor
  static textstyleS24W700Black() {
    return GoogleFonts.rubik(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorsManager.blackColor,
    );
  }

  static textstyleS18W500White() {
    return GoogleFonts.rubik(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: ColorsManager.whiteColor,
    );
  }
}
