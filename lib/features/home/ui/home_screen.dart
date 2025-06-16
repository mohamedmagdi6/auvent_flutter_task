import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/header_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/service_item.dart';
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

                  const SizedBox(height: 24),

                  // Code card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.confirmation_number,
                          size: 40,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            'Got a code !\nAdd your code and save on your order',
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Shortcuts title
                  const Text(
                    'Shortcuts:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),

                  // Shortcuts row
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      shortcutItem(Icons.receipt_long, 'Past\norders'),
                      shortcutItem(Icons.percent, 'Super\nSaver'),
                      shortcutItem(Icons.thumb_up, 'Must-tries'),
                      shortcutItem(Icons.volunteer_activism, 'Give Back'),
                      shortcutItem(Icons.star, 'Best Sellers'),
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
