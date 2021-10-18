import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageLogo extends StatelessWidget {
  CustomImageLogo({
    // required this.colour,
    required this.nameImage,

  });

  final String nameImage;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage(
          'assets/images/'+nameImage,
        ),
        height: 150.0,
        width: 300.0,
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  CustomImage({
    // required this.colour,
    required this.nameImage,required this.width,  required this.height,

  });

  final double width ;
  final double height;
  final String nameImage;
  // final double itemHeight = size.height
  // final double itemWidth = size.width ;
  // var size = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage(
          'assets/images/'+nameImage,
        ),
        height: height,
        width: width,
      ),
    );
  }
}