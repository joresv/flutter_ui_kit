import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';

class Dots extends StatelessWidget {
  final int current, length;
  final activeColor, disableColor;
  const Dots(
      {Key key,
      this.current = 0,
      this.length = 1,
      this.activeColor,
      this.disableColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < length; i++)
          current == i
              ? Container(
                  height: 8,
                  width: 20,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: activeColor ?? Config.colors.purpleSignUpColor),
                )
              : Container(
                  height: 8,
                  width: 20,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: disableColor ?? Config.colors.textFieldColor),
                )
      ],
    );
  }
}
