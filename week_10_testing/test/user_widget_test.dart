import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:week_10_testing/models/user.dart';
import 'package:week_10_testing/widgets/user_widget.dart';

void main() {
  late User user;
  late Widget app;

  setUp(() {
    user = const User(name: 'Jane', email: 'jane@example.com');
    app = MaterialApp(
      home: Scaffold(
        body: UserWidget(user: user),
      ),
    );
  });

  testWidgets('UserWidget displays name and email',
      (WidgetTester tester) async {
    await tester.pumpWidget(app);
    final nameFinder = find.text('Name: Jane');
    final emailFinder = find.text('Email: jane@example.com');

    expect(nameFinder, findsOneWidget);
    expect(emailFinder, findsOneWidget);

    // Testing of widget properties
    expect(
        tester.widget(find.text('Name: Jane')),
        isA<Text>().having(
            (t) => t.style!.fontWeight, 'Font Weight Bold', FontWeight.bold));
  });
}
