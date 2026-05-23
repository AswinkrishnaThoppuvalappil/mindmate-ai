
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mindmateai/core/theme/app_theme.dart';
import 'package:mindmateai/firebase_options.dart';
import 'package:mindmateai/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false,
    title: "Mind Mate AI",
    theme: AppTheme.darktheme,
    routerConfig: appRouter,);
  }
}
