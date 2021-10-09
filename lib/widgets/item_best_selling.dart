import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants/constants.dart';

class ItemBestSelling extends StatelessWidget {
  final String asset, title, subtitle, price;

  const ItemBestSelling(
      {Key key, this.asset, this.title, this.subtitle, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          asset,
                          width: 90,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("$title",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("$subtitle",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: Config.colors.subtitleColorText)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$price€",
                          style: TextStyle(
                              color: Config.colors.blueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                )
              ],
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Config.colors.blueColor,
                  borderRadius: BorderRadius.circular(8)),
              height: 50,
              width: 50,
              child: Icon(
                Icons.flag,
                size: 25,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
