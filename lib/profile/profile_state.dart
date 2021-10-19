part of 'profile_bloc.dart';

class ProfileState {
  // final User? user;
  final bool isCurrentUser;

  final String? userDescription;

  // to na koncu!
  // String ?get userCity => user!.city;
  // String? get userName1 => user!.name;
  //
  //  final FormSubmissionStatus formStatus;

  ProfileState({
    // User? user,
    required bool isCurrentUser,
    String? userDescription,
    //
    // this.formStatus = const InitialFormStatus(),
  })  :
        // this.user = user,
        this.isCurrentUser = isCurrentUser,
        this.userDescription = userDescription ?? '';

  ProfileState copyWith({
    // User? user,
    String? userDescription,
    // FormSubmissionStatus? formStatus,
  }) {
    return ProfileState(
      // user: user ?? this.user,
      isCurrentUser: this.isCurrentUser,
      userDescription: userDescription ?? this.userDescription,
      // formStatus: formStatus ?? this.formStatus
    );
  }
}
