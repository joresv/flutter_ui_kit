import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/widgets/textfield.dart';

class SignUpPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "what is your\nemail?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),
            ),
            Image.asset(
              Config.assets.sign_up_background,
              width: 300,
            ),
            CTextField(
              prefix: Icons.email,
              hint: "Email",
            )
          ],
        ),
      ),
    );
  }
}
