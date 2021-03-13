import 'package:flutter/material.dart';

class CustomRaisedButton2 extends StatelessWidget {
  CustomRaisedButton2({
    this.child,
    this.color,
    this.borderRadius: 35.0,
    this.onpressed,
    this.height,
  });

  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onpressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(
            borderRadius,
          )),
        ),
        onPressed: onpressed,
      ),
    );
  }
}
