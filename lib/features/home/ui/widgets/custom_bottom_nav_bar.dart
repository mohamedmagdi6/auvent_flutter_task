import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
