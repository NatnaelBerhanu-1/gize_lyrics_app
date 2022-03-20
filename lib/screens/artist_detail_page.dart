import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/animation/radial_expansion.dart';
import 'package:lyrics_app/widgets/song_widget.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class ArtistDetailPage extends StatelessWidget {
  static const String pageName = "/artistDetail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: kScreenWidth(context),
                height: 300,
                child: Hero(
                  createRectTween: (begin, end) =>
                      MaterialRectCenterArcTween(begin: begin, end: end),
                  tag: "artist_image",
                  child: LayoutBuilder(
                      builder: (context, constraints) => Image.asset(
                          "assets/images/artist_three.jfif",
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 40,
                right: cSizeSm,
                left: cSizeSm,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: cColorPrimaryDark.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(Icons.arrow_back, color: cColorWhite)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: cColorPrimaryDark.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child:
                              Icon(Icons.favorite_outline, color: cColorWhite)),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: cSizeSm),
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          cColorPrimaryDark.withOpacity(0),
                          cColorPrimaryDark.withOpacity(0.4),
                          cColorPrimaryDark.withOpacity(0.8),
                          cColorPrimaryDark.withOpacity(1.0),
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textH2("Dawit Getachew", color: cColorWhite),
                        SizedBox(
                          height: 4,
                        ),
                        textH3("1.2k likes", color: Colors.white)
                      ],
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(cSizeSm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textH3("Songs"),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Song(
                      artistName: "Dawit chernet",
                      imageUrl: "assets/images/album_cover.jpg",
                      songName: "Nisir",
                    ),
                    Song(
                      artistName: "Dawit chernet",
                      imageUrl: "assets/images/album_cover.jpg",
                      songName: "Nisir",
                    ),
                    Song(
                      artistName: "Dawit chernet",
                      imageUrl: "assets/images/album_cover.jpg",
                      songName: "Nisir",
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
