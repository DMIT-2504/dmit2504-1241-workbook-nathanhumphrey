import 'package:flutter/material.dart';
import 'package:week_09_basic_animation/pages/transform.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Animations'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TransformPage(),
                  ),
                );
              },
              child: const Text('Transforms'),
            ),
          ],
        ),
      ),
    );
  }
}
