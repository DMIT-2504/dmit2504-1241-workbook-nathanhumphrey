import 'package:flutter/material.dart';
import 'package:week_02_profile_demo/widgets/page_heading.dart';
import 'package:week_02_profile_demo/widgets/profile_detail.dart';
import 'package:week_02_profile_demo/widgets/profile_image.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const themeSwatch = Colors.red;

    final colorScheme = ColorScheme.fromSeed(
      seedColor: themeSwatch,
      primary: themeSwatch.shade900,
      onPrimary: themeSwatch.shade100,
      // check out all the other properties you can set
    );

    final textColor = colorScheme.primary;

    return MaterialApp(
      theme: ThemeData(
          colorScheme: colorScheme,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: textColor,
                displayColor: textColor,
              ),
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            titleTextStyle: TextStyle(
              fontSize: 24.0,
              color: colorScheme.onPrimary,
            ),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Flutter Demo'),
        ),
        body: const Column(
          children: [
            PageHeading(title: 'Employee Profile'),
            ProfileImage(imagePath: 'assets/images/me.jpg'),
            ProfileDetail(label: 'Name', value: 'Nathan'),
            ProfileDetail(label: 'Position', value: 'Instructor'),
            ProfileDetail(label: 'Reports to', value: 'Steve'),
          ],
        ),
      ),
    );
  }
}
