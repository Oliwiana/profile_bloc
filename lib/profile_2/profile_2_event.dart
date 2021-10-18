part of 'profile_2_bloc.dart';

abstract class Profile2Event {}

class ProfileDescriptionChanged extends Profile2Event {
  final String? description;

  ProfileDescriptionChanged({this.description});
}

class SaveProfile2Changes extends Profile2Event {

}
