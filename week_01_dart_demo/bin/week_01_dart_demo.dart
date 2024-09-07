import 'dart:io';
import 'package:week_01_dart_demo/person.dart';
import 'package:week_01_dart_demo/week_01_dart_demo.dart';

void main(List<String> arguments) {
  String name = prompt('Enter your name: ');

  // TODO: replace with your int prompt
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  Person p = Person(name, age);

  // TODO: update the age display to come from the person object
  stdout.writeln('Hello world: ${p.name}! You are $age years old.');
}
