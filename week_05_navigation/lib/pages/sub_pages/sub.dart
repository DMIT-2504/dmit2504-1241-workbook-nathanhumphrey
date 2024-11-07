import 'package:flutter/material.dart';
import 'package:week_05_navigation/routes.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Main Sub Nav Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(subPage1Route);
              },
              child: const Text('Sub Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(subPage1Route);
              },
              child: const Text('Sub Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
