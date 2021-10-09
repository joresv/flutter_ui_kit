import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/constants/functions.dart';
import 'package:flutter_ui_kit/widgets/button.dart';
import 'package:flutter_ui_kit/widgets/logo.dart';
import 'package:flutter_ui_kit/widgets/textfield.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: width(context),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Config.colors.clogin1,
              Config.colors.clogin2,
            ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: width(context),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Enter your credentials",
                      style: TextStyle(
                          color: Config.colors.textColorTitleLogin,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CTextField(
                      hint: "Email",
                      prefix: Icons.email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CTextField(
                      hint: "Password",
                      prefix: Icons.lock,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CButton(
                      title: "Log In",
                      border: true,
                      borderColor: Config.colors.clogin1.withOpacity(.5),
                      height: 15,
                      style:
                          TextStyle(color: Config.colors.clogin1, fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        TextButton(
                            onPressed: () {}, child: Text("Sign In up now"))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
