import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/buttons/custom_button_small.dart';
import '../components/icons/all_icons.dart';

import '../components/theme/colors.dart';
import '../last_screen.dart';
import 'profile_bloc.dart';

class ProfileView5 extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ProfileView5());
  }

  // final String? city;
  // final String? name;

  // final User ?userProfile;
  // ProfileView5 ({Key ?key, this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final sessionCubit = context.read<SessionCubit>();
    bool isCurrentUserSelected = true;
    return BlocProvider(
      create: (context) => ProfileBloc(
        isCurrentUser: isCurrentUserSelected,
      ),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          // final formStatus = state.formStatus;
          // if (formStatus is SubmissionFailed) {
          //   _showSnackBar(context, formStatus.exception.toString());
          //   //error message
          // }
        },
        child: ColorfulSafeArea(
          color: orange,
          child: Scaffold(
            // appBar: _appBar(),
            body: _profilePage(),
          ),
        ),
      ),
    );
  }

  Widget _profilePage() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                _descriptionTile(),
                if (state.isCurrentUser) _saveProfileChangesButton(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _descriptionTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Center(
          child: SizedBox(
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: teal.withOpacity(0.1),
                suffixIcon: Icon(editIcon, color: teal),
                hintText: state.isCurrentUser
                    // Hi ${state.userCity}
                    ? ' Hi, Say something about yourself!'
                    : 'This user hasn\'t updated their profile',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderSide: BorderSide(color: teal, width: 1.0),
                ),
              ),
              style: TextStyle(
                  height: 1.2,
                  fontSize: 13,
                  color: Colors.black,
                  letterSpacing: 1.0),
              maxLines: null,
              readOnly: !state.isCurrentUser,
              // toolbarOptions: ToolbarOptions(
              //   copy: state.isCurrentUser,
              //   cut: state.isCurrentUser,
              //   paste: state.isCurrentUser,
              //   selectAll: state.isCurrentUser,
              // ),
              onChanged: (value) => context
                  .read<ProfileBloc>()
                  .add(ProfileDescriptionChanged(description: value)),
            ),
          ),
        );
      },
    );
  }

  // Widget _usernameTile() {
  //   return BlocBuilder<Profile2Bloc, Profile2State>(builder: (context, state) {
  //     return Container(
  //       child: Text(state.userCity!),
  //     );
  //   });
  // }

  Widget _saveProfileChangesButton(BuildContext context) {
    // buildWhen: (previous, current) => previous.status != current.status,
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return
            //
            // (state.formStatus is FormSubmitting)
            //   ? CircularProgressIndicator()
            //   :

            Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButtonOutlined(
                onPressed: () {},
                icon: Icon(
                  arrowIcon,
                  size: 0,
                  color: Colors.white,
                ),
                title: 'skip',
                textColor: teal,
                colour1: teal,
                colour2: scaffold_color,
              ),
              SizedBox(width: 40),
              CustomButtonSmall(
                onPressed: () async {
                  context.read<ProfileBloc>().add(ProfileChangesSaved());
                  await Navigator.of(context).push<void>(LastScreen.route());
                },
                icon: Icon(
                  arrowIcon,
                  size: 25,
                  color: Colors.white,
                ),
                title: 'change',
                textColor: Colors.white,
                colour: teal,
              ),
            ],
          ),
        );
      },
    );
  }

// void _showSnackBar(BuildContext context, String message) {
//   final snackBar = SnackBar(content: Text(message));
//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
// }
}
