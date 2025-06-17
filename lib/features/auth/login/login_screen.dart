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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    AuthEmailTextField(controller: emailController),
                    verticalSpace(10.h),
                    AuthPasswordTextField(
                      isObscureText: isObscureText,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                    ),
                    verticalSpace(20.h),
                    AppButton(
                      text: 'Login',
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          // Handle login logic here
                          context.pushNamedAndRemoveUntil(Routes.home);
                        }
                      },
                      horizontalPadding: 0,
                    ),
                    verticalSpace(16.h),
                    TextButton(
                      onPressed: () {
                        context.pushNamedAndRemoveUntil(Routes.signUpRoute);
                      },
                      child: Text(
                        'create an account',
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
