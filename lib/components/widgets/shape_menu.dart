import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class ShapeTopMenu extends StatelessWidget {
  final Widget? child;
  final String title;
  final String pathShape;

  // final GestureTapCallback? onPressed;
  // final navigatorKey = GlobalKey<NavigatorState>();

  ShapeTopMenu({this.child, required this.title, required this.pathShape});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Align(
          child: Stack(children: <Widget>[
            FittedBox(
              child: SvgPicture.asset(
                pathShape,
                fit: BoxFit.fill,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                  itemBuilder: (BuildContext bc) => [
                    const PopupMenuItem(child: Text('Settings'), value: 1),
                    const PopupMenuItem(
                      child: Text('S.O.S'),
                      value: 2,
                    ),
                    const PopupMenuItem(
                      child: Text('Support'),
                      value: 3,
                    ),
                    const PopupMenuItem(
                      child: Text('Log out'),
                      value: 4,
                    ),
                  ],
                  // onSelected: (int menu) {
                  //   if (menu == 1) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute<void>(
                  //           builder: (BuildContext context) => SettingsScreen()),
                  //     );
                  //   } else if (menu == 2) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute<void>(
                  //           builder: (BuildContext context) => SosScreen()),
                  //     );
                  //   } else if (menu == 3) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute<void>(
                  //           builder: (BuildContext context) => SupportScreen()),
                  //     );
                  //   } else if (menu == 4) {
                  //     Navigator.of(context).pop();
                  //   }
                  // }),
            ),
            ),
            // Center(
            //   child: Align(
            //     alignment: FractionalOffset.topCenter,
            //     child:  Padding(
            //       padding: EdgeInsets.symmetric(vertical: 60.sp),
            //       child: Text(
            //         title,
            //         style:  TextStyle(fontSize: 15.sp, color: white),
            //         textAlign: TextAlign.center,
            //       ),
            //     ),
            //     ),
            //   ),

          ]));
    });
  }
}
