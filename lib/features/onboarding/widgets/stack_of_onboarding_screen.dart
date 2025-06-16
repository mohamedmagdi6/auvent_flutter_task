import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class StackOfOnboardingScreen extends StatelessWidget {
  const StackOfOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssets.onboarding,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
