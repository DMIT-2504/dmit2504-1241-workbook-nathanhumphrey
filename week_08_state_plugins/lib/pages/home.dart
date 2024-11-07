import 'package:flutter/material.dart';
import 'package:week_08_state_plugins/pages/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Plugins'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserBlocPage(),
                  ),
                );
              },
              child: const Text('Bloc Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Text('Riverpod Page'),
                  ),
                );
              },
              child: const Text('Riverpod Page'),
            ),
          ],
        ),
      ),
    );
  }
}
