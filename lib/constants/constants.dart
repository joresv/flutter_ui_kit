import 'package:flutter/painting.dart';

class Config {
  static final assets = _Assets();
  static final colors = _Colors();
}

class _Assets {
  final fist_page_login = "assets/bg.jpg";
  final sign_up_background = "assets/name.png";
  final birds = "assets/birds.png";
  final chair1 = "assets/chair1.png";
  final chair2 = "assets/chair2.png";
}

class _Colors {
  final clogin1 = Color(0xFF007F93);
  final clogin2 = Color(0xFF00FED3);
  final textFieldColor = Color(0xFFEDEDED);
  final textColorTitleLogin = Color(0xFF545454);
  final purpleSignUpColor = Color(0xFF841FEC);
  final colorSelling = Color(0xFFE9F4FE);
  final subtitleColorText = Color(0xFF9D9D9D);
  final blueColor = Color(0xFF134CFE);
}
