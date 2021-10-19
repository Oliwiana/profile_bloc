import 'package:image_picker/image_picker.dart';

abstract class SignUpEvent {}

class SignUpAvatarChanged extends SignUpEvent {}

class SignUpImagePickerOpened extends SignUpEvent {
  final ImageSource imageSource;

  SignUpImagePickerOpened({required this.imageSource});
}

class SignUpImagePathProvided extends SignUpEvent {
  final String? avatarPath;

  SignUpImagePathProvided({this.avatarPath});
}

class SignUpCityChanged extends SignUpEvent {
  final String? city;

  SignUpCityChanged({this.city});
}

class SignUpNameChanged extends SignUpEvent {
  final String? name;

  SignUpNameChanged({this.name});
}

class SignUpChangesSaved extends SignUpEvent {}
