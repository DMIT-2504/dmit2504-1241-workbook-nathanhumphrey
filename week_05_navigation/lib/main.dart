import 'package:flutter/material.dart';
import 'package:week_05_navigation/pages/home.dart';
import 'package:week_05_navigation/pages/page_one.dart';
import 'package:week_05_navigation/pages/page_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/page_one': (context) => const PageOne(),
        '/page_two': (context) => const PageTwo(),
      },
      //home: Home(),
    );
  }
}
