import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String? title;
  final GestureTapCallback? onPressed;
  final Icon icon;

  CustomAppBar(
      this.title,
      { Key? key, this.onPressed, required this.icon,})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
      title: Text(title!),
      backgroundColor:Colors.transparent,
      automaticallyImplyLeading: true,

    );
  }
}