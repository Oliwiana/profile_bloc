import 'package:flutter/material.dart';

class PopupItem<T> extends PopupMenuItem<T> {

  final Function()? onTap;
  Widget ?child;
  PopupItem({this.onTap, this.child, Key ?key})
      : super(child: child, key: key);

  @override
  _PopupItemState<T> createState() => _PopupItemState<T>();
}

class _PopupItemState<T> extends PopupMenuItemState<T, PopupItem<T>> {
  @override
  void handleTap() {
    widget.onTap?.call();
    super.handleTap();
  }
}