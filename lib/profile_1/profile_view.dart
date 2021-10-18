import 'package:app/components/buttons/custom_button_big.dart';
import 'package:app/components/buttons/custom_form_field.dart';
import 'package:app/components/icons/all_icons.dart';

import 'package:app/components/theme/colors.dart';
import 'package:app/profile_2/profile_view2.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_bloc.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final sessionCubit = context.read<SessionCubit>();
    bool isCurrentUserSelected = true;
    return BlocProvider(
        create: (context) => ProfileBloc(isCurrentUser: isCurrentUserSelected),
        child: BlocListener<ProfileBloc, ProfileState>(
            listener: (context, state) {
              //     if (state.status.isSubmissionFailure) {
              //       ScaffoldMessenger.of(context)
              //         ..hideCurrentSnackBar()
              //         ..showSnackBar(
              //           const SnackBar(content: Text('Authentication Failure')),
              //         );
              //
              // }
            },
            child: ColorfulSafeArea(
                color: Colors.orange,
                child: Scaffold(
                  body: _profilePage(),
                ))));
  }

  Widget _profilePage() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              // _avatar(),
              // if (state.isCurrentUser) _changeAvatarButton(),
              SizedBox(height: 30),
              _nameTile(),
              _cityTile(),
              // _descriptionTile(),
              if (state.isCurrentUser) _saveProfileChangesButton(),
            ],
          ),
        ),
      );
    });
  }

  Widget _nameTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return CustomTextField(
        title: 'Name',
        obscureText: false,
        colour: Colors.black,
        // helperText: helperTextUsername,
        keyboardType: TextInputType.name,
        labelText: '',
        onChanged: (value) => context.read<ProfileBloc>().add(
              ProfileNameChanged(name: value),
            ),
        // readOnly: !state.isCurrentUser,
        // toolbarOptions: ToolbarOptions(
        // copy: state.isCurrentUser,
        // cut: state.isCurrentUser,
        // paste: state.isCurrentUser,
        // selectAll: state.isCurrentUser,
        // )
      );
    });
  }

  Widget _cityTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return CustomTextField(
        title: 'City',
        obscureText: false,
        colour: Colors.black,
        // helperText: helperTextRegion,
        keyboardType: TextInputType.name,
        labelText: 'city',
        onChanged: (value) => context.read<ProfileBloc>().add(
              ProfileCityChanged(city: value),
            ),
        // readOnly: !state.isCurrentUser,
        // toolbarOptions: ToolbarOptions(
        //   copy: state.isCurrentUser,
        //   cut: state.isCurrentUser,
        //   paste: state.isCurrentUser,
        //   selectAll: state.isCurrentUser,
        // )
      );
    });
  }

  Widget _saveProfileChangesButton() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return
          // (state.formStatus is FormSubmitting)
          //   ? CircularProgressIndicator()
          CustomButtonBig(
        onPressed: () async {
          context.read<ProfileBloc>().add(SaveProfileChanges());
          await Navigator.of(context).push<void>(ProfileView5.route());
        },
        icon: Icon(
          arrowIcon,
          size: 25,
          color: Colors.white,
        ),
        title: 'change',
        textColor: Colors.white,
        colour: teal,
      );
    });
  }

// Widget _avatar() {
//   return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
//     if (state.avatarPath.isEmpty) {
//       return CircleAvatar(
//           radius: 83,
//           backgroundColor: orange,
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 80,
//             child: Icon(personIcon, size: 60, color: orange),
//           ));
//     } else {
//       return ClipRRect(
//           borderRadius: BorderRadius.circular(83),
//           child: CachedNetworkImage(
//             imageUrl: state.avatarPath,
//             fit: BoxFit.cover,
//           ));
//
//     }
//   });
// }

// Widget _changeAvatarButton() {
//   return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
//     return CustomButtonText(
//         onPressed: () =>
//             context.read<ProfileBloc>().add(ChangeAvatarRequest()),
//         title: changePhoto,
//         textColor: teal);
//   });
// }

// Widget _descriptionTile() {
//   return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
//     return ListTile(
//       tileColor: Colors.white,
//       leading: Icon(Icons.edit),
//       title: TextFormField(
//         initialValue: state.userDescription,
//         decoration: InputDecoration.collapsed(
//             hintText: state.isCurrentUser
//                 ? 'Say something about yourself'
//                 : 'This user hasn\'t updated their profile'),
//         maxLines: null,
//         readOnly: !state.isCurrentUser,
//         toolbarOptions: ToolbarOptions(
//           copy: state.isCurrentUser,
//           cut: state.isCurrentUser,
//           paste: state.isCurrentUser,
//           selectAll: state.isCurrentUser,
//         ),
//         onChanged: (value) => context
//             .read<ProfileBloc>()
//             .add(ProfileDescriptionChanged(description: value)),
//       ),
//     );
//   });
// }
//   void _showImageSourceActionSheet(BuildContext context) {
//     Function(ImageSource) selectImageSource = (imageSource) {
//       context
//           .read<ProfileBloc>()
//           .add(OpenImagePicker(imageSource: imageSource));
//     };
//     if (Platform.isIOS) {
//       showCupertinoModalPopup(
//         context: context,
//         builder: (context) => CupertinoActionSheet(
//           actions: [
//             CupertinoActionSheetAction(
//               child: Text('Camera'),
//               onPressed: () {
//                 Navigator.pop(context);
//                 selectImageSource(ImageSource.camera);
//               },
//             ),
//             CupertinoActionSheetAction(
//               child: Text('Gallery'),
//               onPressed: () {
//                 try {
//                   Navigator.pop(context);
//                   selectImageSource(ImageSource.gallery);
//                 } catch (e) {
//                   throw e;
//                 }
//               },
//             )
//           ],
//         ),
//       );
//     } else {
//       showModalBottomSheet(
//         context: context,
//         builder: (context) => Wrap(children: [
//           ListTile(
//             leading: Icon(Icons.camera_alt),
//             title: Text('Camera'),
//             onTap: () {
//               Navigator.pop(context);
//               selectImageSource(ImageSource.camera);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.camera_alt),
//             title: Text('Gallery'),
//             onTap: () {
//               Navigator.pop(context);
//               selectImageSource(ImageSource.gallery);
//             },
//           ),
//         ]),
//       );
//     }
//   }
//
//   void _showSnackBar(BuildContext context, String message) {
//     final snackBar = SnackBar(content: Text(message));
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }
}
