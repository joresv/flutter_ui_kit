import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/functions.dart';
import 'package:flutter_ui_kit/screens/auths/first_auth.dart';
import 'package:flutter_ui_kit/screens/best_selling.dart';

class Routing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            item(context, "First page".toUpperCase(), FirstAuth()),
            item(context, "BEST SELLING", BestSellingPage()),
          ],
        ),
      ),
    );
  }
}

Widget item(context, String title, Widget page) => ListTile(
      title: Text(title),
      onTap: () => route(context, page),
    );
