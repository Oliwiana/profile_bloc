import 'dart:async';

import 'package:bloc/bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   final DataRepository dataRepo;
// User? user;
//   String ?get userCity => user!.city;
//   String? get userName1 => user!.name;

  ProfileBloc({
    required bool isCurrentUser,
  }) : super(ProfileState(isCurrentUser: isCurrentUser));

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ProfileDescriptionChanged) {
      yield state.copyWith(userDescription: event.description);
    } else if (event is ProfileChangesSaved) {
      // final updatedUser =
      // state.user!.copyWith(city: state.userCity, name: state.userName1);
      //
      //   User userNew= updatedUser.copyWith(city: state.userCity,name: state.userName1,description: state.userDescription);

      // final newData =
      //
      // state.user!.copyWith(description: state.userDescription);
      //
      // try {
      //   await dataRepo.updateUser2(newData);
      //   print(newData);
      //   // print(userDescribe);
      //   yield state.copyWith(formStatus: SubmissionSuccess());
      // } on Exception catch (e) {
      //   yield state.copyWith(formStatus: SubmissionFailed(e));
      // } catch (e) {
      //   print(e);
      // }
    }
  }
}
