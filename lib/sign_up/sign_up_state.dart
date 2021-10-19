class SignUpState {
  final bool isCurrentUser;
  final String avatarPath;
  final String? userCity;

  // is username! :D =name
  final String? userName1;

  //
  // String get username => user!.username;
  // String? get email => user!.email;

  // final FormSubmissionStatus formStatus;

  SignUpState({
    required bool isCurrentUser,
    String? avatarPath,
    String? userCity,
    String? userName1,
    // this.formStatus = const InitialFormStatus(),
  })  : this.isCurrentUser = isCurrentUser,
        this.avatarPath = avatarPath ?? '',
        this.userCity = userCity ?? '',
        this.userName1 = userName1 ?? '';

  SignUpState copyWith({
    String? avatarPath,
    String? userCity,
    String? userName1,
  }) {
    return SignUpState(
        isCurrentUser: this.isCurrentUser,
        avatarPath: avatarPath ?? this.avatarPath,
        userCity: userCity ?? this.userCity,
        userName1: userName1 ?? this.userName1);
  }
}
