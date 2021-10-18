import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonBig extends StatelessWidget {
  CustomButtonBig({
    required this.colour,
    required this.title,
    required this.onPressed,
    required this.icon,
    required this.textColor,
  });

  final VoidCallback? onPressed;

  final Color colour;
  final String title;
  final Icon icon;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 19.0),
      child: ElevatedButton.icon(
          label: icon,
          style: ElevatedButton.styleFrom(
            primary: colour,
            onPrimary: colour,
            shadowColor: Colors.blueAccent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minimumSize: const Size(260, 50),
          ),
          icon: Text(
            title,
            style: TextStyle(color: textColor),
          ),
          onPressed: onPressed),
    );
  }
}
