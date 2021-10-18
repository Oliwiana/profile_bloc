// Widget _Text_1() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
//     child: const Text(
//       'Godzina karmienia',
//       style: TextStyle(
//           height: 0.1, fontSize: 14, color: Colors.black,
//           letterSpacing: 1.0,fontWeight: FontWeight.bold,
//           fontStyle: FontStyle.italic),
//
//     ),
//   );
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboveFieldText extends StatelessWidget {
  AboveFieldText({
    // required this.colour,
    required this.title,
    // required this.textColor,
  });

  // final Color colour;
  final String title;

  // final Color textColor;

  @override
  Widget build(BuildContext context) {
      return Text(
        title,
        style: const TextStyle(
            color: Colors.black,
            height: 0.1,
            fontSize: 14,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),

    );
  }
}
