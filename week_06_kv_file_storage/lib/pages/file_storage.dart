import 'package:flutter/material.dart';

class FileStorage extends StatelessWidget {
  const FileStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Storage'),
      ),
      body: const Center(
        child: Text('CONTENT'),
      ),
    );
  }
}
