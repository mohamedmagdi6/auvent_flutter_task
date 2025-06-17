import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/carousel_with_indicator.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/got_code_card.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/header_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/popular_restaurants_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/service_item.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/shortcuts_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ServiceItem(
                        subtitle: 'Food',
                        title: 'Up to 50%',
                        imageUrl: ImageAssets.burger,
                      ),
                      horizontalSpace(16.w),
                      ServiceItem(
                        subtitle: 'Health & wellness',
                        title: '20mins',
                        imageUrl: ImageAssets.health,
                      ),
                      horizontalSpace(8.w),
                      ServiceItem(
                        subtitle: 'Groceries',
                        title: '15 mins',
                        imageUrl: ImageAssets.groceries,
                      ),
                    ],
                  ),

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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8.w,
                    children: [
                      ShortcutsItem(
                        imageUrl: IconsAssets.pastOrdersIcon,
                        title: 'Past\norders',
                      ),
                      ShortcutsItem(
                        imageUrl: IconsAssets.superSaverIcon,
                        title: 'Super\nSaver',
                      ),
                      ShortcutsItem(
                        imageUrl: IconsAssets.mustTriesIcon,
                        title: 'Must-tries',
                      ),
                      ShortcutsItem(
                        imageUrl: IconsAssets.giveBackIcon,
                        title: 'Give Back',
                      ),
                      ShortcutsItem(
                        imageUrl: IconsAssets.bestSellerIcon,
                        title: 'Best Sellers',
                      ),
                    ],
                  ),

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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsManager.whiteColor,
        showUnselectedLabels: true,
        currentIndex: 1,

        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyles.textstyleS12W700BlackDmSans(),
        unselectedLabelStyle: TextStyles.textstyleS12W500LightGreykDmSans(),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconsAssets.homeIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconsAssets.categoriesIcon),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconsAssets.deliverIcon),
            label: 'Deliver',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconsAssets.cartIcon),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconsAssets.profileIcon),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
