import 'package:auvent_flutter_task/core/di/servies_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:auvent_flutter_task/core/helpers/extensions.dart';
import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:auvent_flutter_task/core/widgets/app_button.dart';
import 'package:auvent_flutter_task/features/auth/widgets/auth_email_text_field.dart';
import 'package:auvent_flutter_task/features/auth/widgets/auth_password_text_field.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_bloc.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_states.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_events.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<SignUpBloc>(),
      child: Scaffold(
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
                      verticalSpace(10.h),
                      AuthPasswordTextField(
                        isObscureText: isObscureText,
                        controller: confirmPasswordController,
                        validator: (value) {
                          if (value != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      verticalSpace(20.h),

                      BlocConsumer<SignUpBloc, SignUpState>(
                        listener: (context, state) {
                          if (state is SignUpSuccess) {
                            context.pushNamedAndRemoveUntil(Routes.home);
                          } else if (state is SignUpFailure) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(state.message)),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is SignUpLoading) {
                            return SizedBox(
                              height: 30.h,
                              child: CircularProgressIndicator(
                                color: ColorsManager.primaryColor,
                              ),
                            );
                          }
                          return AppButton(
                            text: 'Sign Up',
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                context.read<SignUpBloc>().add(
                                  SignUpRequested(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  ),
                                );
                              }
                            },
                            horizontalPadding: 0,
                          );
                        },
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
      ),
    );
  }
}
