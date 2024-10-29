import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_08_state_plugins/models/user.dart';
import 'package:week_08_state_plugins/state/user_cubit.dart';

class UserBlocPage extends StatelessWidget {
  const UserBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Cubit Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('User state object'),
            // Display the user state
            // Text(
            //     'User name: ${context.watch<UserCubit>().state.user.firstName}'),
            BlocBuilder<UserCubit, UserState>(
                builder: (context, state) => Text(
                    'User name: ${state.user.firstName} ${state.user.lastName}'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // update the user state
          User user = context.read<UserCubit>().state.user;
          user.firstName = 'NEW FIRST';
          context.read<UserCubit>().updatedUser(user);
        },
        child: const Icon(Icons.update),
      ),
    );
  }
}
