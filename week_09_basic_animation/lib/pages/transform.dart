import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  const TransformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Transformed Text'),
          ],
        ),
      ),
    );
  }
}
