import 'package:flutter/material.dart';
import 'package:week_05_navigation/pages/page_one.dart';
import 'package:week_05_navigation/pages/page_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String returnValue = '';

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
              onPressed: () async {
                String value = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PageOne(),
                  ),
                );
                setState(() {
                  returnValue = value;
                });
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
            if (returnValue.isNotEmpty) Text('Return value - $returnValue'),
          ],
        ),
      ),
    );
  }
}