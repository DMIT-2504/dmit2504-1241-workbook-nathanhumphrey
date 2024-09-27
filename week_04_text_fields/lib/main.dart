import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mobile UI Form'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                const Text(
                  'New User Form',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Username cannot be empty
                TextFormField(
                  validator: (value) => value == null || value.trim() == ''
                      ? 'Username cannot be empty'
                      : null,
                  decoration: const InputDecoration(
                    label: Text('Username'),
                  ),
                ),
                TextFormField(
                  validator: (value) => value == null || value.trim() == ''
                      ? 'Password cannot be empty'
                      : null,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
