import 'package:flutter/material.dart';

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
                Navigator.of(context).pushNamed('sub_page1');
              },
              child: const Text('Sub Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('sub_page2');
              },
              child: const Text('Sub Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
