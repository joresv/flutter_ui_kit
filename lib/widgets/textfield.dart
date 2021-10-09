import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CTextField extends StatefulWidget {
  final String hint;

  final IconData prefix, suffix;
  final TextInputType type;
  final bool isPassword;

  const CTextField(
      {Key key,
      this.hint,
      this.prefix,
      this.suffix,
      this.type,
      this.isPassword = false})
      : super(key: key);

  @override
  _CTextFieldState createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  bool visible;
  IconData _icon = FontAwesomeIcons.eye;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    visible = widget.isPassword ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Config.colors.textFieldColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextFormField(
          keyboardType: widget.type ?? TextInputType.text,
          obscureText: visible,
          cursorColor: Config.colors.textFieldColor,
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.prefix,
              ),
              hintText: widget.hint ?? "",
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(_icon),
                      onPressed: () {
                        visible = !visible;
                        if (visible)
                          _icon = FontAwesomeIcons.eye;
                        else
                          _icon = FontAwesomeIcons.eyeSlash;
                        setState(() {});
                      })
                  : null,
              hintStyle: TextStyle(fontSize: 20),
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ));
  }
}
