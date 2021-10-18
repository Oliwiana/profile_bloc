
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';



class TextStep extends StatelessWidget {
  TextStep({
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
          height: 1, fontSize: 50, color: purple2),
    );
  }
}

