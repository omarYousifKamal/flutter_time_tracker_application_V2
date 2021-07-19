import 'package:flutter/cupertino.dart';
import 'package:flutter_time_tracker_course/common_widgets/custom_text_button.dart';

class SocialSignInButton extends CustomTextButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) //calling super class constructor
  : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15),
              ),
              //good way to allign stuff
              Opacity(opacity: 0.0, child: Image.asset(assetName)),
            ],
          ),
          onPressed: onPressed,
          color: color,
        );
}
