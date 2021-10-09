import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/screens/auths/first_auth.dart';
import 'package:flutter_ui_kit/screens/routing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Config.colors.clogin1,
      ),
      home: Routing(),
    );
  }
}
