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
                // String value = await Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const PageOne(),
                //   ),
                // );
                var value = await Navigator.of(context).pushNamed(
                  '/page_one',
                  arguments: 'A special message',
                );

                setState(() {
                  returnValue = value as String;
                });
              },
              child: const Text('Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const PageTwo(),
                //   ),
                // );
                Navigator.of(context).pushNamed('/page_two');
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
