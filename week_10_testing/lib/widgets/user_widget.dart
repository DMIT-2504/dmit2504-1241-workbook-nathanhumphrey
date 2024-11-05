import 'package:flutter/material.dart';
import 'package:week_10_testing/models/user.dart';

class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Name: ${user.name}'),
        Text('Email: ${user.email}'),
      ],
    );
  }
}
