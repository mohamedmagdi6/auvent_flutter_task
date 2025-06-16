import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.textstyleS24W700Black(),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.textstyleS24W700Black(),
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.textstyleS24W700Black().copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.textstyleS24W700Black(),
          ),
        ],
      ),
    );
  }
}
