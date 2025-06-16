import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthEmailTextField extends StatelessWidget {
  const AuthEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AppTextFormField(
        hintText: 'Email',
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(IconsAssets.mailIcon),
        ),
      ),
    );
  }
}
