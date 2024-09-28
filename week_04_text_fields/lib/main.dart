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
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: UserSignUpForm(),
        ),
      ),
    );
  }
}

class UserSignUpForm extends StatefulWidget {
  const UserSignUpForm({super.key});

  @override
  State<UserSignUpForm> createState() => _UserSignUpFormState();
}

class _UserSignUpFormState extends State<UserSignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
            onPressed: () {
              // test validation on fields
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Processing signup'),
                ));
              }
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
