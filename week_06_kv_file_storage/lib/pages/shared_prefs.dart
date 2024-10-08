import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs extends StatefulWidget {
  const SharedPrefs({super.key});

  @override
  State<SharedPrefs> createState() => _SharedPrefsState();
}

class _SharedPrefsState extends State<SharedPrefs> {
  String _message = '';

  @override
  void initState() {
    _readFromStorage();
    super.initState();
  }

  /// Get the k,v value, if any
  Future<void> _readFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _message = prefs.getString('message') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _message = 'Some message to write';
                });

                final prefs = await SharedPreferences.getInstance();
                prefs.setString('message', _message);
              },
              child: const Text('Save Message'),
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _message = '';
                });

                final prefs = await SharedPreferences.getInstance();
                prefs.clear();
                // Or remove single items
                // prefs.remove('message');
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
