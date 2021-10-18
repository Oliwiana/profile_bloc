import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonText extends StatelessWidget {
  CustomButtonText({
    // required this.colour,
    required this.title,
    required this.onPressed,
    required this.textColor, this.fontSize, this.fontWeight,
  });

  final GestureTapCallback onPressed;
  // final Color colour;
  final String title;
  final Color textColor;
  final double? fontSize;
  final String ?fontWeight;


  @override
  Widget build(BuildContext context) {
      return TextButton(
          child: Text(
            title,
            style: TextStyle(color: textColor,fontSize:fontSize,
                fontWeight: FontWeight.bold),
          ),
          onPressed: onPressed);
  }
}
