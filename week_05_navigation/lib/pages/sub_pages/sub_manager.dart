import 'package:flutter/material.dart';
import 'package:week_05_navigation/pages/sub_pages/sub.dart';
import 'package:week_05_navigation/pages/sub_pages/sub1.dart';
import 'package:week_05_navigation/pages/sub_pages/sub2.dart';

class SubManager extends StatefulWidget {
  const SubManager({required this.subPageRoute, super.key});

  final String subPageRoute;

  @override
  State<SubManager> createState() => _SubManagerState();
}

class _SubManagerState extends State<SubManager> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Navigation Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (_navigatorKey.currentState!.canPop()) {
              _navigatorKey.currentState!.pop();
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Navigator(
        key: _navigatorKey,
        initialRoute: widget.subPageRoute,
        onGenerateRoute: (settings) {
          Widget page = const SizedBox.shrink();

          switch (settings.name) {
            case 'sub':
              page = const SubPage();
              break;
            case 'sub_page1':
              page = const SubPage1();
              break;
            case 'sub_page2':
              page = const SubPage2();
              break;
          }

          return MaterialPageRoute(
              builder: (context) => page, settings: settings);
        },
      ),
    );
  }
}
