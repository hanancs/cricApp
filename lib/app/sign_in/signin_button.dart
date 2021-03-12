import 'package:flutter/cupertino.dart';
import 'package:timer/common_widgets/raisedButton.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15),
          ),
          color: color,
          height: 45.0,
          onpressed: onPressed,
        );
}
