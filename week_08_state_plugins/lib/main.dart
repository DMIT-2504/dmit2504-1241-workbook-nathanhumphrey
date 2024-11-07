import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_08_state_plugins/pages/home.dart';
import 'package:week_08_state_plugins/state/user_cubit.dart';

void main() {
  runApp(
    BlocProvider<UserCubit>(
      create: (context) => UserCubit(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}
