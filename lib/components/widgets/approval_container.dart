import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ApprovalCard extends StatelessWidget {
  final Color? color;
  final Icon? icon;
  final Widget? child;
  final GestureTapCallback? onPressed;
  final String? text;

  ApprovalCard({this.color, this.child, this.onPressed, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: onPressed,
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 40),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.orangeAccent, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: child),
    ));
  }
}

class ApprovalText extends StatelessWidget {
  ApprovalText({
    // required this.colour,
    required this.title,
    this.child,
    this.textColor,
    // required this.textColor,
  });

  // final Color colour;
  final String title;
  final Widget? child;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
          style: TextStyle(
              fontSize: 13.sp,
              color: Colors.black,
              height: 1.5,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      );
    });
  }
}

class ApprovalIcon extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color? backgroundColor;
  final GestureTapCallback? onPressed;

  ApprovalIcon({this.icon, this.title, this.backgroundColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),

          // mainAxisSize : MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: Text(
                    title!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: onPressed,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class IconCheck extends StatelessWidget {
  final IconData icon;

  IconCheck({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.green,
            size: 100.0,
          ),
        ],
      ),
    );
  }
}

class TextUnder extends StatelessWidget {
  TextUnder({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 70.h),
              child: Text(
                text,
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
                style: TextStyle(
                    fontSize: 7.sp,
                    color: Colors.black,
                    height: 1.5,
                    letterSpacing: 1.0,
                    // fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      );
    });
  }
}
