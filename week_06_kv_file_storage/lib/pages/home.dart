import 'package:flutter/material.dart';
import 'package:week_06_kv_file_storage/pages/file_storage.dart';
import 'package:week_06_kv_file_storage/pages/shared_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPrefs(),
                  ),
                );
              },
              child: const Text('Shared Preferences'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FileStorage(),
                  ),
                );
              },
              child: const Text('File Storage'),
            ),
          ],
        ),
      ),
    );
  }
}
