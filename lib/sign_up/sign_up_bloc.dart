import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required bool isCurrentUser})
      : super(SignUpState(isCurrentUser: isCurrentUser));

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is SignUpCityChanged) {
      yield state.copyWith(userCity: event.city);
    } else if (event is SignUpNameChanged) {
      yield state.copyWith(userName1: event.name);
    } else if (event is SignUpChangesSaved) {
      // final updatedUser =
      //     state.copyWith(city: state.userCity, name: state.userName1);
    }
  }
}
