import 'package:auvent_flutter_task/auvent_app.dart';
import 'package:auvent_flutter_task/core/routing/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(AUVENTApp(appRouter: AppRouter()));
}
