import 'package:app/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isCurrentUserSelected = true;
    return Navigator(
      pages: [
        // Show loading screen
        if (isCurrentUserSelected = true) MaterialPage(child: SignUpView())

        // Show auth flow
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
