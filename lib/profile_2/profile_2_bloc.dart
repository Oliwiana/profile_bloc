import 'dart:async';




import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'profile_2_event.dart';

part 'profile_2_state.dart';

class Profile2Bloc extends Bloc<Profile2Event, Profile2State> {
//   final DataRepository dataRepo;
// User? user;
//   String ?get userCity => user!.city;
//   String? get userName1 => user!.name;

  Profile2Bloc(
      {required bool isCurrentUser, })
      : super(Profile2State( isCurrentUser: isCurrentUser));

  @override
  Stream<Profile2State> mapEventToState(Profile2Event event) async* {
    if (event is ProfileDescriptionChanged) {
      yield state.copyWith(userDescription: event.description);
    } else if (event is SaveProfile2Changes) {


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
