import 'dart:io';
import 'package:week_01_dart_demo/person.dart';
import 'package:week_01_dart_demo/week_01_dart_demo.dart';

void main(List<String> arguments) {
  String name = prompt('Enter your name: ');
  int age = promptInt('Enter your age: ');

  Person p = Person(name, age);

  stdout.writeln('Hello world: ${p.name}! You are ${p.age} years old.');
}
