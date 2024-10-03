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
      onGenerateRoute: (settings) {
        MaterialPageRoute? page;

        switch (settings.name) {
          case '/':
            page = MaterialPageRoute(builder: (context) => const Home());
            break;
          case '/page_one':
            String messageValue = settings.arguments as String;
            page = MaterialPageRoute(
              builder: (context) => PageOne(message: messageValue),
            );
            break;
          case '/page_two':
            page = MaterialPageRoute(builder: (context) => const PageTwo());
            break;
        }

        return page;
      },
      // routes: {
      //   '/': (context) => const Home(),
      //   '/page_one': (context) => const PageOne(),
      //   '/page_two': (context) => const PageTwo(),
      // },
      //home: Home(),
    );
  }
}
