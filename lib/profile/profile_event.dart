part of 'profile_bloc.dart';

abstract class ProfileEvent {}

class ProfileDescriptionChanged extends ProfileEvent {
  final String? description;

  ProfileDescriptionChanged({this.description});
}

class ProfileChangesSaved extends ProfileEvent {}
