import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LastScreen());
  }
  final  String ?city;
  final  String ?name;
  final  String ?description;

  LastScreen({Key? key,  this.city, this.name, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final username = user!.username;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello $name'),
            Text('$city'),
            Text('$description'),
            TextButton(
              child: Text('sign out'),
              onPressed: () {}
              // onPressed: () => BlocProvider.of<SessionCubit>(context).signOut(),
            )
          ],
        ),
      ),
    );
  }
}
