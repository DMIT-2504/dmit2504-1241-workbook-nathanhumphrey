import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  PageOne({required this.message, super.key});

  String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop<String>('Default From page one');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Navigation Page One'),
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     Navigator.of(context).pop<String>('From page one');
      //   },
      //   child: const Text('On Page One'),
      // ),
      body: Text('The message $message'),
    );
  }
}
