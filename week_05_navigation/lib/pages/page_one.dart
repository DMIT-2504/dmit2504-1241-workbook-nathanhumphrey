import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Page One'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop<String>('From page one');
        },
        child: const Text('On Page One'),
      ),
    );
  }
}