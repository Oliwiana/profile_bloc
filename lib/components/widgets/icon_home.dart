import 'package:flutter/material.dart';

class HomeLabel extends StatelessWidget {
  final double width;

  final double height;
  final String nameImage;
  final String label;

  HomeLabel(
      {required this.label,
      required this.width,
      required this.height,
      required this.nameImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage(
            'assets/images/$nameImage',
          ),
          height: height,
          width: width,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
