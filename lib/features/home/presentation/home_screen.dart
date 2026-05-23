import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../auth/bloc/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MindMate AI',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          IconButton(
            onPressed: () async {
              await context.read<AuthCubit>().logOut();

              context.go('/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome Home 😄',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}