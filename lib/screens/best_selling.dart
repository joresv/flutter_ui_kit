import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';
import 'package:flutter_ui_kit/constants/functions.dart';
import 'package:flutter_ui_kit/widgets/item_best_selling.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.file_copy_sharp,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.gift,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: width(context),
        height: height(context),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0, .5],
                colors: [Config.colors.colorSelling, Colors.white])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Card(
                        shadowColor: Colors.black.withOpacity(.5),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(Config.assets.birds),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "best selling".toUpperCase(),
                      style: TextStyle(
                          color: Config.colors.textColorTitleLogin,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                height: 290,
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Trending".toUpperCase(),
                  style: TextStyle(
                      color: Config.colors.textColorTitleLogin,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
              Container(
                height: 290,
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ItemBestSelling(
                      asset: Config.assets.chair1,
                      title: "Chaise à Mousse",
                      subtitle: "bonne qualité",
                      price: "1500",
                    ),
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
