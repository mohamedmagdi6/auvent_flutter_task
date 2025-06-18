import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/image_of_code_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GotCodeCard extends StatelessWidget {
  const GotCodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: ColorsManager.lightGray.withAlpha(100),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorsManager.moreLightGray,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.lightGray.withAlpha(100),
              blurRadius: 4,
              offset: const Offset(0, -2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            ImageOfCodeCard(),
            horizontalSpace(16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Got a code !', style: TextStyles.textstyleS14W700Black()),
                Text(
                  'Add your code and save on your order',
                  style: TextStyles.textstyleS12W500LightGreykDmSans(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
