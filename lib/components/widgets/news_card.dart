import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final GestureTapCallback? onPressed;
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;

  NewsCard(
      {this.color,
      this.child,
      this.onPressed,
      this.leading,
      required this.title,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: ListTile(
          leading: leading,
          title: title,
          trailing: trailing,
        ),
        color: color,
      ),
    );
  }
}
