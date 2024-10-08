import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileStorage extends StatefulWidget {
  const FileStorage({super.key});

  @override
  State<FileStorage> createState() => _FileStorageState();
}

class _FileStorageState extends State<FileStorage> {
  String _message = '';

  @override
  void initState() {
    _readFromStorage();
    super.initState();
  }

  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/storage.txt');
  }

  /// Get the file value, if any
  Future<void> _readFromStorage() async {
    File file = await _localFile;
    var contents = '';

    if (await file.exists()) {
      contents = await file.readAsString();
    }

    setState(() {
      _message = contents;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Storage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _message = 'Some message to write';
                });
                final file = await _localFile;
                await file.writeAsString(_message);
              },
              child: const Text('Save Message'),
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _message = '';
                });
                final file = await _localFile;
                await file.writeAsString(_message);
              },
              child: const Text('Delete Message'),
            ),
            _message.isNotEmpty
                ? Text(_message)
                : const Text('Nothing to read'),
          ],
        ),
      ),
    );
  }
}
