import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  //blackColor
  static textstyleS24W700Black() {
    return GoogleFonts.dmSans(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorsManager.blackColor,
    );
  }

  static textstyleS16W700Black() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsManager.blackColor,
    );
  }

  static textstyleS16W500Black() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorsManager.blackColor,
    );
  }

  static textstyleS14W400Black() {
    return GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsManager.blackColor,
    );
  }

  //greyColor
  static textstyleS18W700Grey() {
    return GoogleFonts.dmSans(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: ColorsManager.textGreyColor,
    );
  }

  static textstyleS14W400Grey() {
    return GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsManager.textGreyColor,
    );
  }

  static textstyleS16W700Grey() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsManager.textGreyColor,
    );
  }

  static textstyleS16W400Grey() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsManager.textGreyColor,
    );
  }

  static textstyleS10W400Grey() {
    return GoogleFonts.dmSans(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.textGreyColor,
    );
  }

  static textstyleS14W400HintGrey() {
    return GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsManager.textHintGreyColor,
    );
  }

  static textstyleS12W500Grey() {
    return GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ColorsManager.textGreyColor,
    );
  }

  //whiteColor
  static textstyleS19W700White() {
    return GoogleFonts.dmSans(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: ColorsManager.whiteColor,
    );
  }

  static textstyleS16W600White() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ColorsManager.whiteColor,
    );
  }

  //primaryColor
  static textstyleS32W700Primary() {
    return GoogleFonts.dmSans(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.primaryColor,
    );
  }

  static textstyleS19W500Primary() {
    return GoogleFonts.dmSans(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      color: ColorsManager.primaryColor,
    );
  }

  static textstyleS16W700Primary() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsManager.primaryColor,
    );
  }

  static textstyleS14W400Primary() {
    return GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsManager.primaryColor,
    );
  }

  static textstyleS12W400Primary() {
    return GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorsManager.primaryColor,
    );
  }

  //blueColor
  static textstyleS12W400Blue() {
    return GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorsManager.whiteColor,
    );
  }

  // orangeColor
  static textstyleS16W500Orange() {
    return GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorsManager.orangeColor,
    );
  }

  static textstyleS12W400Orange() {
    return GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorsManager.orangeColor,
    );
  }

  // omar ahmed
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGray,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
}
