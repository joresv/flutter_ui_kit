import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/constants/functions.dart';
import 'package:flutter_ui_kit/screens/auths/sign_up_page1.dart';
import 'package:flutter_ui_kit/screens/auths/sign_up_page2.dart';
import 'package:flutter_ui_kit/screens/auths/sign_up_page3.dart';
import 'package:flutter_ui_kit/widgets/button.dart';
import 'package:flutter_ui_kit/widgets/dots.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  PageController controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => pop(context)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.sort,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: controller,
            onPageChanged: (value) {
              page = value;
              setState(() {});
            },
            children: [
              SignUpPage1(),
              SignUpPage2(),
              SignUpPage3(),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Dots(
            length: 3,
            current: page,
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                )),
            CButton(
              width: 20,
              backgroundColor: Config.colors.purpleSignUpColor,
              title: "Next",
              style: TextStyle(color: Colors.white),
              onPressed: () {
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
            )
          ],
        ),
      ),
    );
  }
}
