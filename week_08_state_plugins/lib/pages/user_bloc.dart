import 'package:flutter/material.dart';

class UserBlocPage extends StatelessWidget {
  const UserBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Cubit Demo'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('User state object'),
            // Display the user state
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // update the user state
        },
        child: const Icon(Icons.update),
      ),
    );
  }
}
