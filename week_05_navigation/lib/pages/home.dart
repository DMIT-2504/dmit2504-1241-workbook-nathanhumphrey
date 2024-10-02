import 'package:flutter/material.dart';
import 'package:week_05_navigation/pages/page_one.dart';
import 'package:week_05_navigation/pages/page_two.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PageOne(),
                  ),
                );
              },
              child: const Text('Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PageTwo(),
                  ),
                );
              },
              child: const Text('Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
