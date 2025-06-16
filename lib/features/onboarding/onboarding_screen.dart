import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/core/widgets/app_button.dart';
import 'package:auvent_flutter_task/features/onboarding/widgets/stack_of_onboarding_screen.dart';
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
          StackOfOnboardingScreen(),
          SizedBox(height: 15.h),
          Text(
            onboardingSubtitles[currentIndex],
            style: TextStyles.textstyleS24W700Black(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          AppButton(text: 'Get Started'),
          SizedBox(height: 20.h),
          TextButton(
            onPressed: () {
              setState(() {
                // Update the index to show the next onboarding screen
                currentIndex = (currentIndex + 1) % onboardingTitles.length;
              });
            },
            child: Text('Next', style: TextStyles.textstyleS24W700Black()),
          ),
        ],
      ),
    );
  }
}
