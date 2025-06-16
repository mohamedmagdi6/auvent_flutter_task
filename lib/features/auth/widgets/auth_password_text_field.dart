import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthPasswordTextField extends StatelessWidget {
  const AuthPasswordTextField({super.key, required this.isObscureText});

  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AppTextFormField(
        hintText: 'Password',
        isObscureText: isObscureText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(IconsAssets.passwordIcon),
        ),
      ),
    );
  }
}
