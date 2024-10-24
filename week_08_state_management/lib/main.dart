import 'package:flutter/material.dart';
import 'package:week_08_state_management/models/user.dart';
import 'package:week_08_state_management/user_notifier.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

User user = User('Jane', 'Doe');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserNotifier(
      user: user,
      child: Builder(
        builder: (BuildContext context) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: HomePage(),
              ),
            ),
          );
        },
      ),
    );
  }
}
