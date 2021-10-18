import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final GestureTapCallback? onPressed;
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;

  SettingsCard(
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
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white24, width: 3),
          color: color,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
