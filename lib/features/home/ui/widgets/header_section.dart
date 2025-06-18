import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, this.name, this.address});
  final String? name;
  final String? address;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.h,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 50.h,
        bottom: 20.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            ColorsManager.primaryColor,
            ColorsManager.burpleColor,
            ColorsManager.yellowColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivering to',
                style: TextStyles.textstyleS12W700BlackDmSans(),
              ),
              Text(
                address ?? 'Unknown Address',
                style: TextStyles.textstyleS18W700BlackDmSans(),
              ),
              Text('Hi $name!', style: TextStyles.textstyleS28W700White()),
            ],
          ),
          const CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/image/magdi.jpg'),
          ),
        ],
      ),
    );
  }
}
