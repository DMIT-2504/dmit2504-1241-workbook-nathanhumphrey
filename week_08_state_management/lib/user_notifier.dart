import 'package:flutter/material.dart';
import 'package:week_08_state_management/models/user.dart';

// This is no longer used, left for posterity
class UserNotifier extends InheritedNotifier<User> {
  const UserNotifier({
    required User user,
    required super.child,
    super.key,
  }) : super(notifier: user);

  static UserNotifier? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserNotifier>();
  }

  static User of(BuildContext context) {
    final UserNotifier? result = maybeOf(context);
    if (result == null || result.notifier == null) {
      throw StateError('No UserNotifier in context');
    }
    return result.notifier!;
  }
}
