import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/constants/functions.dart';
import 'package:flutter_ui_kit/screens/auths/sign_in_page.dart';
import 'package:flutter_ui_kit/screens/auths/sign_up_page.dart';
import 'package:flutter_ui_kit/widgets/button.dart';
import 'package:flutter_ui_kit/widgets/logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(Config.assets.fist_page_login))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 200,
              ),
              Expanded(
                child: Logo(),
              ),
              Expanded(
                child: Column(
                  children: [
                    CButton(
                      onPressed: () => route(context, SignUpPage()),
                      border: true,
                      height: 15,
                      title: "Sign Up",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CButton(
                      onPressed: () => route(context, SignInPage()),
                      height: 15,
                      title: "Log In",
                      backgroundColor: Colors.white,
                      style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
