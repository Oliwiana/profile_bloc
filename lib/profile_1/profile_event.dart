import 'package:image_picker/image_picker.dart';

abstract class ProfileEvent {}

class ChangeAvatarRequest extends ProfileEvent {}

class OpenImagePicker extends ProfileEvent {

  final ImageSource imageSource;

  OpenImagePicker({required this.imageSource});
}

class ProvideImagePath extends ProfileEvent {
  final String ? avatarPath;

  ProvideImagePath({this.avatarPath});
}

class ProfileCityChanged extends ProfileEvent {
  final String? city;

  ProfileCityChanged({this.city});
}
class ProfileNameChanged extends ProfileEvent {
  final String? name;

  ProfileNameChanged({this.name});
}

class SaveProfileChanges extends ProfileEvent {}
