import 'package:test/test.dart';
import 'package:week_10_testing/models/user.dart';

void main() {
  group('User Tests', () {
    late User user;

    setUp(() {
      user = const User(name: 'Jane Doe', email: 'jdoe@example.com');
    });

    // TODO: create a test for the overridden toString method
    test('User toString() returns correct value', () {
      // Arrange
      String value;

      // Act
      value = user.toString();

      // Assert
      expect(value, 'Name: Jane Doe, Email: jdoe@example.com');
    });

    test('User should have name and email', () {
      expect(user.name, 'Jane Doe');
      expect(user.email, 'jdoe@example.com');
    });
  });
}
