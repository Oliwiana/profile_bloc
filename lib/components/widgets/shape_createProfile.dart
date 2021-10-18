//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_svg/svg.dart';
//
//
// class ShapeTopProfile extends StatelessWidget {
//   final Widget? child;
//   final String title;
//   final String pathShape;
//   final Color? color;
//
//   ShapeTopProfile(
//       {this.child, required this.title, required this.pathShape, this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//         child: Center(
//             child: Stack(children: <Widget>[
//       Expanded(
//         child: FittedBox(
//           child: SvgPicture.asset(
//             pathShape,
//             // 'assets/images/register_login_shape.svg',
//             // width: double.infinity,
//             color: color,
//             fit: BoxFit.fill,
//             allowDrawingOutsideViewBox: true,
//           ),
//         ),
//       ),
//     Positioned(
//     top: 5,
//     right: 30,
//     child: IconButton(
//     icon: const Icon(Icons.search),
//     color: white,
//     iconSize: 30,
//     // tooltip: 'Show Snackbar',
//     // onPressed: () =>
//     //     Navigator.push(
//     //       context,
//     //       MaterialPageRoute<void>(
//     //           builder: (BuildContext context) => NewsSearch()),
//     //     ),
//     // ),
//     ),
//       Positioned(
//         top: 0,
//         right: 0,
//         child: PopupMenuButton(
//             icon: const Icon(
//               Icons.more_vert_sharp,
//               size: 40,
//               color: Colors.white,
//             ),
//             itemBuilder: (BuildContext bc) => [
//                   const PopupMenuItem(child: Text('Settings'), value: 1),
//                   const PopupMenuItem(
//                     child: Text('S.O.S'),
//                     value: 2,
//                   ),
//                   const PopupMenuItem(
//                     child: Text('Support'),
//                     value: 3,
//                   ),
//                   const PopupMenuItem(
//                     child: Text('Log out'),
//                     value: 4,
//                   ),
//                 ],
//             // onSelected: (int menu) {
//             //   if (menu == 1) {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute<void>(
//             //           builder: (BuildContext context) => SettingsScreen()),
//             //     );
//             //   } else if (menu == 2) {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute<void>(
//             //           builder: (BuildContext context) => SosScreen()),
//             //     );
//             //   } else if (menu == 3) {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute<void>(
//             //           builder: (BuildContext context) => SupportScreen()),
//             //     );
//             //   } else if (menu == 4) {
//             //     Navigator.of(context).pop();
//             //   }
//             // }),
//         ),
//       ),
//       // Column(children: [
//       ElevatedButton(
//         style: ElevatedButton.styleFrom(primary: color, elevation: 0),
//         onPressed: () => Navigator.of(context).pop(),
//         child: const Icon(
//           Icons.arrow_back_ios,
//           size: 20,
//         ),
//         // SizedBox(
//         //   width: 3,
//         //   height: 10,
//         // ),
//         // ])
//       ),
//
//       Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Text(
//             title,
//             style: const TextStyle(fontSize: 15, color: white),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     ])));
//   }
// }
// // Widget _simplePopup() => Padding(
// //     padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
// //     child: PopupMenuButton(
// //         icon: Icon(
// //           Icons.more_vert_sharp,
// //           size: 40,
// //           color: Colors.black,
// //         ),
// //         elevation: 20,
// //         enabled: true,
// //         itemBuilder: (context) => [
// //           PopupMenuItem(
// //             child: Text("First"),
// //             value: 1,
// //           ),
// //           PopupMenuItem(
// //             child: Text("Second"),
// //             value: 2,
// //           ),
// //           PopupMenuItem(
// //             child: Text("First"),
// //             value: 1,
// //           ),
// //           PopupMenuItem(
// //             child: Text("First"),
// //             value: 1,
// //           ),
// //         ]));
// // Widget _search(BuildContext context){
// //  return Positioned(
// //     top: 5,
// //     right: 30,
// //     child: IconButton(
// //       icon: const Icon(Icons.search),
// //       color: white,
// //       iconSize: 30,
// //       // tooltip: 'Show Snackbar',
// //       onPressed: () =>
// //           Navigator.of(context).push<void>(NewsSearch.route()),
// //     ),
// //   );
// // }