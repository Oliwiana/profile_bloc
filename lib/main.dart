
import 'package:app/components/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_navigator.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: scaffold_color,
            accentColor: Colors.grey,
            fontFamily: 'Nunito',
            buttonColor: teal,
            // textTheme: TextTheme(
            //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Nunito'),
            // )
        ),
        home:
        // MultiRepositoryProvider(
        //   providers: [
        //     RepositoryProvider(create: (context) => AuthRepository()),
        //     RepositoryProvider(create: (context) => DataRepository()),
          // ],
          //  BlocProvider(
          //   create: (context) => SessionCubit(
          //     authRepo: context.read<AuthRepository>(),
          //     dataRepo: context.read<DataRepository>(),
          //   ),
          //   child:
            AppNavigator());


            // : LoadingView());
  }


}
