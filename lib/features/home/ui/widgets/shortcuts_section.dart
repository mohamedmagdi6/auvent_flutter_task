import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/shortcuts_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortcutsSection extends StatelessWidget {
  const ShortcutsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        ShortcutsItem(imageUrl: IconsAssets.mustTriesIcon, title: 'Must-tries'),
        ShortcutsItem(imageUrl: IconsAssets.giveBackIcon, title: 'Give Back'),
        ShortcutsItem(
          imageUrl: IconsAssets.bestSellerIcon,
          title: 'Best Sellers',
        ),
      ],
    );
  }
}
