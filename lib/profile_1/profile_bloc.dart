import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'profile_event.dart';
import 'profile_state.dart';



class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {

  ProfileBloc(
      {
      required bool isCurrentUser})
      : super(ProfileState( isCurrentUser: isCurrentUser)) {

  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
   if (event is ProfileCityChanged) {
      yield state.copyWith(userCity: event.city);
    } else if (event is ProfileNameChanged) {
      yield state.copyWith(userName1: event.name);
    } else if (event is SaveProfileChanges) {
      // final updatedUser =
      //     state.copyWith(city: state.userCity, name: state.userName1);
   }
  }
}
