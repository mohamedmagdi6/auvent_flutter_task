import 'package:auvent_flutter_task/core/helpers/extensions.dart';
import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:auvent_flutter_task/core/widgets/app_button.dart';
import 'package:auvent_flutter_task/features/auth/widgets/auth_email_text_field.dart';
import 'package:auvent_flutter_task/features/auth/widgets/auth_password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: const AssetImage(ImageAssets.appLogo)),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    AuthEmailTextField(),
                    verticalSpace(10.h),
                    AuthPasswordTextField(isObscureText: isObscureText),
                    verticalSpace(10.h),
                    AuthPasswordTextField(isObscureText: isObscureText),
                    verticalSpace(20.h),
                    AppButton(
                      text: 'Sign Up',
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          // Handle sign up logic here
                          context.pushNamedAndRemoveUntil(Routes.home);
                        }
                      },
                      horizontalPadding: 0,
                    ),
                    verticalSpace(16.h),
                    TextButton(
                      onPressed: () {
                        context.pushNamedAndRemoveUntil(Routes.logingRoute);
                      },
                      child: Text(
                        'already have an account?',
                        style: TextStyles.textstyleS16W700GreyDmSans(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
