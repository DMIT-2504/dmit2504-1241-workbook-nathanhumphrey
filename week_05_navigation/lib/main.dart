import 'package:flutter/material.dart';
import 'package:week_05_navigation/pages/home.dart';
import 'package:week_05_navigation/pages/page_one.dart';
import 'package:week_05_navigation/pages/page_two.dart';
import 'package:week_05_navigation/pages/sub_pages/sub.dart';
import 'package:week_05_navigation/pages/sub_pages/sub_manager.dart';
import 'package:week_05_navigation/routes.dart';

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
          case homeRoute:
            page = MaterialPageRoute(builder: (context) => const Home());
            break;
          case page1Route:
            String messageValue = settings.arguments as String;
            page = MaterialPageRoute(
              builder: (context) => PageOne(message: messageValue),
            );
            break;
          case page2Route:
            page = MaterialPageRoute(builder: (context) => const PageTwo());
            break;
          case subRoute:
            page = MaterialPageRoute(
              builder: (context) => const SubManager(
                subPageRoute: subRoute,
              ),
            );
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
