import 'package:flutter/cupertino.dart';
import 'package:timer/common_widgets/raisedbutton2.dart';

class HomeCompo extends CustomRaisedButton2 {
  HomeCompo({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Image.asset(
                assetName,
              ),
            ],
          ),
          color: color,
          height: 100.0,
          onpressed: onPressed,
        );
}
