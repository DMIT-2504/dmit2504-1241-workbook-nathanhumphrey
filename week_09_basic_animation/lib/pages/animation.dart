import 'dart:math' as math;
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimatationPageState();
}

class _AnimatationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedBuilder(
            //   animation: _controller,
            //   child: const Text('Animated Text'),
            //   builder: (BuildContext context, Widget? child) {
            //     return Transform.rotate(
            //       angle: _controller.value * (2 * math.pi),
            //       child: child,
            //     );
            //   },
            // ),
            RotationTransition(
              // turns: _controller,
              turns: CurvedAnimation(
                parent: _controller,
                curve: Curves.elasticInOut,
              ),
              child: const Text('Animated Text'),
            ),
          ],
        ),
      ),
    );
  }
}
