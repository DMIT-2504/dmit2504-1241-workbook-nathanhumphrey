import 'dart:math' as math;
import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  const TransformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2.0,
              child: Transform.translate(
                offset: const Offset(0.0, 64.0),
                child: Transform.rotate(
                  angle: -30 * (math.pi / 180),
                  child: const Text('Transformed Text'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
