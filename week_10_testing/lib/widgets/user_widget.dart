import 'package:flutter/material.dart';
import 'package:week_10_testing/models/user.dart';

class UserWidget extends StatefulWidget {
  final User user;

  const UserWidget({required this.user, super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  var showInfo = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showInfo)
          Text(
            'Name: ${widget.user.name}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        if (showInfo) Text('Email: ${widget.user.email}'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              showInfo = true;
            });
          },
          child: const Text('Show User Info'),
        )
      ],
    );
  }
}
