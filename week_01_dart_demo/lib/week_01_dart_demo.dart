import 'dart:io';

/// Returns a [String] from the user
///
/// Displays the passsed in [message] as the prompt
/// to the user.
String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync()!;
}

// TODO: create a function that will prompt the user for 
// an int value. Keep displaying the prompt until a valid
// int is entered (HINT: try/catch)