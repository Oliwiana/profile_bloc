import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomButtonSmall extends StatelessWidget {
  CustomButtonSmall({
    required this.colour,
    required this.title,
    required this.onPressed,
    required this.icon,
    required this.textColor,
  });

  final GestureTapCallback onPressed;
  final Color colour;
  final String title;
  final Icon icon;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 120),
        child: ElevatedButton.icon(
            label: icon,
            style: ElevatedButton.styleFrom(
              primary: colour,
              onPrimary: colour,
              shadowColor: Colors.blueAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(80, 50),
            ),
            icon: Text(
              title,
              style: TextStyle(color: textColor),
            ),
            onPressed: onPressed),
      );
    });
  }
}


class CustomButtonOutlined extends StatelessWidget {
  CustomButtonOutlined({
    required this.title,
    required this.onPressed,
    required this.icon,
    required this.textColor,required this.colour1, required this.colour2,
  });

  final GestureTapCallback onPressed;
  final Color colour1;
  final Color colour2;
  final String title;
  final Icon icon;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 120),
        child:OutlinedButton.icon(
            label: icon,
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 2.0, color: colour1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              primary: colour2,
              shadowColor: Colors.blueAccent,
              minimumSize: Size(80, 50),
              elevation: 4,
            ),
            icon: Text(
              title,
              style: TextStyle(color: textColor),
            ),
            onPressed: onPressed),
      );
    });
  }
}
