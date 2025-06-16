import 'dart:async';
import 'package:auvent_flutter_task/core/helpers/extensions.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      context.pushNamedAndRemoveUntil(Routes.onboarding);
    });
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Center(
          child: Image.asset(ImageAssets.logo, width: double.infinity),
        ),
      ),
    );
  }
}
