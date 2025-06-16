import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/got_code_card.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/header_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/service_item.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/shortcuts_item.dart';
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
                  const SizedBox(height: 12),

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

                  const SizedBox(height: 24),

                  // Promo image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://i.imgur.com/IgG7zEQ.png', // Use your actual image URL here
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 12),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDot(true),
                        buildDot(false),
                        buildDot(false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shortcutItem(IconData icon, String label) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildDot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.purple : Colors.grey,
      ),
    );
  }
}
