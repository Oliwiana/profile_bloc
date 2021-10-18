import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget {
  final IconData icon;
  final String? label;


  IconLabel({required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.deepPurpleAccent,
          size: 130.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
