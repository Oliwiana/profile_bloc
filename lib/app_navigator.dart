import 'package:app/profile_1/profile_view.dart';
import 'package:flutter/material.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isCurrentUserSelected = true;
    return Navigator(
      pages: [
        // Show loading screen
        if (isCurrentUserSelected = true) MaterialPage(child: ProfileView())

        // Show auth flow
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
