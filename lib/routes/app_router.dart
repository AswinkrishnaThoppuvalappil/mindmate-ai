import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindmateai/onboarding/presentation/splashscreen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Splashscreen()),
  ],
);
