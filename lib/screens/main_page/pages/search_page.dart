import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: cSizeSm,
      ),
      Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: cSizeXl),
        decoration: BoxDecoration(
            color: cColorLightGray, borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: TextField(
            cursorColor: cColorPink,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for songs and artists",
                hintStyle:
                    TextStyle(color: cColorPrimaryDark.withOpacity(0.2))),
          ),
        ),
      ),
      SizedBox(
        height: cSizeSm,
      ),
      textH2("Recent searches"),
      SizedBox(
        height: cSizeXsm,
      ),
      SizedBox(
          height: 30,
          child: Text("yene guday", style: TextStyle(fontSize: 18))),
      SizedBox(
          height: 30,
          child: Text("dawit tsige", style: TextStyle(fontSize: 18))),
      // SizedBox(
      //   height: cSizeSm,
      // ),
      // textH2("Search results"),
      // SizedBox(
      //   height: cSizeSm,
      // ),
      // ListView(
      //   shrinkWrap: true,
      //   children: [
      //     Song(
      //       artistName: "Dawit chernet",
      //       imageUrl: "assets/images/album_cover.jpg",
      //       songName: "Nisir",
      //     ),
      //     Song(
      //       artistName: "Dawit chernet",
      //       imageUrl: "assets/images/album_cover.jpg",
      //       songName: "Nisir",
      //     ),
      //   ],
      // )
    ]);
  }
}
