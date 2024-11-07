import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:week_10_testing/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized;
  group('end to end test', () {
    testWidgets('Tap button and display name and email',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MainApp());

      final nameFinder = find.text('Name: Jane Doe');
      final emailFinder = find.text('Email: jdoe@example.com');
      final buttonFinder = find.byType(ElevatedButton);

      expect(nameFinder, findsNothing);
      expect(emailFinder, findsNothing);

      // tap the button
      await tester.tap(buttonFinder);

      // pump the app
      await tester.pumpAndSettle();

      expect(nameFinder, findsOneWidget);
      expect(emailFinder, findsOneWidget);

      // Testing of widget properties
      expect(
          tester.widget(find.text('Name: Jane')),
          isA<Text>().having(
              (t) => t.style!.fontWeight, 'Font Weight Bold', FontWeight.bold));
    });
  });
}
