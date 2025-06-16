import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:auvent_flutter_task/features/auth/login/ui/login_screen.dart';
import 'package:auvent_flutter_task/features/auth/signup/ui/signup_screen.dart';
import 'package:auvent_flutter_task/features/onboarding/onboarding_screen.dart';
import 'package:auvent_flutter_task/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.logingRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

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
