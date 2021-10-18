import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Color? color;
  final Widget ?child;
  final GestureTapCallback? onPressed;

  HomeCard({ this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 150,
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.deepPurpleAccent, width: 3),
          color: color,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}