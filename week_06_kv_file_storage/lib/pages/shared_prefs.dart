import 'package:flutter/material.dart';

class SharedPrefs extends StatelessWidget {
  const SharedPrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: const Center(
        child: Text('CONTENT'),
      ),
    );
  }
}
