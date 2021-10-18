
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:sizer/sizer.dart';

import '../theme/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.onChanged,
      this.keyboardType,
      this.colour,
      this.helperText,
      required this.labelText,
      this.errorText,
      this.filled,
      this.fillColor,
      this.autofillHints,
      required this.obscureText,
      this.prefixIcon,
      this.suffixIcon,
      this.icon,
      this.labelStyle,
      this.controller,
      this.onPressed,
      this.prefixText,
      this.textInputAction,
      this.onSubmitted,
      this.title, this.onTap, this.validator, this.hintText,  this.readOnly, this.toolbarOptions, });
final bool ?readOnly;

 final ToolbarOptions? toolbarOptions;
  final Function(String value)? onChanged;
  final Function(String val)? onSubmitted;
  final Function? onPressed;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final Color? colour;
  final String? helperText;
  final String labelText;
  final TextStyle? labelStyle;
  final String? errorText;
  final bool obscureText;
  final bool? filled;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
 final String ? hintText;
  final Icon? icon;
  final TextEditingController? controller;
  final String? prefixText;
  final TextInputAction? textInputAction;
  final String? title;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
    return Center(
      child: Column(
          children: [
        Align(
          alignment: Alignment(-0.9, -0.9),
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 15.sp,horizontal: 40.sp),
            child: Text(
              '$title',
              style:  TextStyle(
                  color: Colors.black,
                  height: 0.1,
                  fontSize: 14,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),

          ),
        ),
        ConstrainedBox(
          constraints:  BoxConstraints.tightFor(width: 230.sp),
          child: TextFormField(
            autofillHints: autofillHints,
            obscureText: obscureText,
            onChanged: onChanged,
            keyboardType: keyboardType,
            controller: controller,
            // onSubmitted: onSubmitted,

            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: teal,
                    width: 2,
                  ),
                ),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                labelStyle: labelStyle,
                prefixText: prefixText,
                hintText:hintText,
                // readOnly:readOnly,
                //  toolbarOptions: toolbarOptions,
                // onPressed:onPressed,
                filled: true,
                fillColor: Colors.white,
                // contentPadding: const EdgeInsets.all(22),
                helperText: helperText,
                labelText: labelText,
                errorText: errorText),

          ),
        ),
      ]),
    );
    });}
}
