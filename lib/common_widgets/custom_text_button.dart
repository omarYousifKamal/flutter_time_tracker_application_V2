import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {required this.child,
      //default value
      this.height: 60,
      this.borderRadius: 6.0,
      required this.onPressed,
      required this.color});
  final Widget child;
  final double borderRadius;
  final VoidCallback? onPressed;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //you can add your own point if not
      height: height,
      child: TextButton(
        child: child,
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
