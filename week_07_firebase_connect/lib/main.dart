import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:week_07_firebase_connect/app_state.dart';
import 'package:week_07_firebase_connect/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ApplicationState appState = ApplicationState();

  runApp(
    MainApp(
      appState: appState,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({required this.appState, super.key});

  final ApplicationState appState;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) {
          return HomePage(appState: appState);
        },
        '/sign-in': (context) {
          return SignInScreen(
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.of(context).pop();
                // Navigator.of(context).pushReplacementNamed('/');
              }),
            ],
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            actions: [
              SignedOutAction((context) {
                Navigator.of(context).pop();
                // Navigator.of(context).pushReplacementNamed('/');
              }),
            ],
          );
        },
      },
    );
  }
}
