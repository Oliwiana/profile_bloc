part of 'profile_2_bloc.dart';


 class Profile2State {
   // final User? user;
   final bool isCurrentUser;

   final String? userDescription;

   // to na koncu!
  // String ?get userCity => user!.city;
  // String? get userName1 => user!.name;
  //
  //  final FormSubmissionStatus formStatus;


   Profile2State({
     // User? user,
     required bool isCurrentUser,
     String? userDescription,
     //
     // this.formStatus = const InitialFormStatus(),
   })  :
         // this.user = user,
         this.isCurrentUser = isCurrentUser,
         this.userDescription = userDescription ?? '';


   Profile2State copyWith({
     // User? user,
     String? userDescription,
     // FormSubmissionStatus? formStatus,

   }) {
     return Profile2State(
         // user: user ?? this.user,
         isCurrentUser: this.isCurrentUser,
         userDescription: userDescription ?? this.userDescription,
         // formStatus: formStatus ?? this.formStatus
     );


   }
 }


