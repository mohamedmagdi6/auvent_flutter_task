import 'package:auvent_flutter_task/core/helpers/extensions.dart';
import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:auvent_flutter_task/core/widgets/app_button.dart';
import 'package:auvent_flutter_task/features/onboarding/widgets/onboarding_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> onboardingTitles = [
    'all-in-one delivery ',
    'User-to-User Delivery',
    'Sales & Discounts',
  ];
  List<String> onboardingSubtitles = [
    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
    'Connect with other users to send and receive deliveries seamlessly.',
    'Enjoy exclusive sales and discounts on various products and services.',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OnboardingImage(),
          verticalSpace(12.h),
          Text(
            onboardingTitles[currentIndex],
            style: TextStyles.textstyleS28W500Black(),
            textAlign: TextAlign.center,
          ),
          verticalSpace(12.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              onboardingSubtitles[currentIndex],
              style: TextStyles.textstyleS14W400Grey(),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          AppButton(
            text: 'Get Started',
            onPressed: () {
              context.pushNamed(Routes.logingRoute);
            },
          ),
          verticalSpace(12.h),
          TextButton(
            onPressed: currentIndex == onboardingTitles.length - 1
                ? () {}
                : () {
                    setState(() {
                      // Update the index to show the next onboarding screen
                      currentIndex =
                          (currentIndex + 1) % onboardingTitles.length;
                    });
                  },
            child: Text('Next', style: TextStyles.textstyleS14W400Grey()),
          ),
          verticalSpace(40.h),
        ],
      ),
    );
  }
}
