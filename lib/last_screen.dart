import 'package:app/profile/profile_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LastScreen());
  }

  @override
  Widget build(BuildContext context) {
    // final username = user!.username;
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello ${state.user.name}'),
                Text('${state.user.city}'),
                Text('${state.userDescription}'),
                TextButton(
                  child: Text('sign out'),
                  onPressed: () {},
                  // onPressed: () => BlocProvider.of<SessionCubit>(context).signOut(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
