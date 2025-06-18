import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:auvent_flutter_task/features/auth/signin/signin_screen.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_screen.dart';
import 'package:auvent_flutter_task/features/home/ui/home_screen.dart';
import 'package:auvent_flutter_task/features/onboarding/onboarding_screen.dart';
import 'package:auvent_flutter_task/features/splash/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => FirebaseAuth.instance.currentUser != null
              ? const HomeScreen()
              : const OnboardingScreen(),
        );
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.logingRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
