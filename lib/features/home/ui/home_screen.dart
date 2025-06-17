import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/carousel_with_indicator.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/got_code_card.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/header_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/popular_restaurants_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/services_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/shortcuts_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section
            HeaderSection(),
            verticalSpace(8.h),
            // Services title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Services:', style: TextStyles.textstyleS20W700Black()),
                  verticalSpace(12.h),
                  // Services row
                  ServicesSection(),
                  verticalSpace(16.h),
                  // Code card
                  GotCodeCard(),
                  const SizedBox(height: 24),
                  // Shortcuts title
                  const Text(
                    'Shortcuts:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  verticalSpace(12.h),
                  // Shortcuts row
                  ShortcutsSection(),
                  verticalSpace(16.h),
                  CarouselWithIndicator(
                    carouselImages: [
                      ImageAssets.bannerImage,
                      ImageAssets.bannerImage,
                      ImageAssets.bannerImage,
                      ImageAssets.bannerImage,
                      ImageAssets.bannerImage,
                    ],
                  ),
                  verticalSpace(16.h),
                  PopularRestaurantsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
