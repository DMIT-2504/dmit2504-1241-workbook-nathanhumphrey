import 'package:flutter/material.dart';
import 'package:week_08_state_management/models/user.dart';
import 'package:week_08_state_management/user_notifier.dart';

class LastNamePage extends StatelessWidget {
  const LastNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: update this widget to make use of the provider
    final User user = UserNotifier.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Name Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 24.0,
            ),
            ListenableBuilder(
              listenable: user,
              builder: (context, child) {
                return Text('User name: ${user.firstName} ${user.lastName}');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Update our user firs name here
        onPressed: () {
          user.lastName = 'NewLastName';
        },
        child: const Icon(Icons.update),
      ),
    );
  }
}
