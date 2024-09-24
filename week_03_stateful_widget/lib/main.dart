import 'package:flutter/material.dart';
import 'package:week_03_stateful_widget/widgets/random_dog.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: RandomDog(),
        ),
      ),
    );
  }
}
