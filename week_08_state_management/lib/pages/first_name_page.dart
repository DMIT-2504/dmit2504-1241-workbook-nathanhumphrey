import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_08_state_management/models/user.dart';

class FirstNamePage extends StatelessWidget {
  const FirstNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<User>(
      builder: (context, user, child) => Scaffold(
        appBar: AppBar(
          title: const Text('First Name Page'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 24.0,
              ),
              // No longer require the ListenableBuilder, the Consumser takes care
              // of rendering updates to the ChangeNotifier
              Text('User name: ${user.firstName} ${user.lastName}')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // Update our user firs name here
          onPressed: () {
            user.firstName = 'NewFirstName';
          },
          child: const Icon(Icons.update),
        ),
      ),
    );
  }
}
