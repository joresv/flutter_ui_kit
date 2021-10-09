import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String title;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final bool border;
  final TextStyle style;
  final double height;
  final double width;

  final Function onPressed;

  const CButton(
      {Key key,
      this.title,
      this.radius = 30,
      this.backgroundColor,
      this.borderColor,
      this.border = false,
      this.style,
      this.height = 10,
      this.onPressed,
      this.width = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(
              color: border ? borderColor ?? Colors.white : Colors.transparent,
              width: 2)),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: height, horizontal: width),
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
