import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_08_state_plugins/models/user.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState(User('Jane', 'Doe')));

  void updatedUser(user) {
    return emit(UserState(user));
  }
}

class UserState {
  User user;
  UserState(this.user);
}
