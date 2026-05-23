
import 'package:go_router/go_router.dart';
import 'package:mindmateai/features/auth/presentation/login_screen.dart';
import 'package:mindmateai/features/auth/presentation/signup_screen.dart';
import 'package:mindmateai/features/home/presentation/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: FirebaseAuth.instance.currentUser!=null? '/home':'/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path:"/singup",builder:(context, state)=>SignupScreen()),
    GoRoute(path:"/home",builder:(context, state)=>HomeScreen()),
  ],
);
 