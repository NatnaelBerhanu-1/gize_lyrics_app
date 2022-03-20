import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/profile_page.dart';
import 'package:lyrics_app/widgets/artist_widget.dart';
import 'package:lyrics_app/widgets/recent_widget.dart';
import 'package:lyrics_app/widgets/song_widget.dart';
import 'package:lyrics_app/widgets/text_overlayed_image.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: cSizeSm,
          ),
          SizedBox(height: cSizeXsm),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              textH1("Explore", color: cColorPrimaryDark),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(ProfilePage.pageName);
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cColorLightGray,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      color: cColorDarkGray,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: cSizeMd,
          ),
          header(action: () {}, title: "Featured"),
          SizedBox(
            height: cSizeSm,
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                SizedBox(
                  width: kScreenWidth(context) * 0.8,
                  height: 180,
                  child: TextOverlayedImage(
                      imageHeight: 180,
                      imageUrl: "assets/images/artist_two.jpg",
                      text: "Awaj awaj (yohana)"),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: kScreenWidth(context) * 0.8,
                  height: 180,
                  child: TextOverlayedImage(
                      imageHeight: 180,
                      imageUrl: "assets/images/artist_one.jpg",
                      text: "Awaj awaj (yohana)"),
                )
              ],
            ),
          ),
          SizedBox(
            height: cSizeSm,
          ),
          header(action: () {}, title: "Artists"),
          SizedBox(
            height: cSizeSm,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 180, minHeight: 180),
            child: ListView.builder(
                itemCount: 1,
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Artist(
                    artistName: "Yohana",
                    profileUrl: "assets/images/artist_three.jfif")),
          ),
          header(action: () {}, title: "Recently added"),
          SizedBox(
            height: cSizeSm,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 180, minHeight: 180),
            child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Recent(
                    title: "Efelgihalew",
                    profileUrl: "assets/images/artist_one.jpg")),
          ),
          SizedBox(
            height: cSizeMd,
          ),
          header(action: () {}, title: "Most popular"),
          SizedBox(
            height: cSizeMd,
          ),
          Column(
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
    );
  }

  Widget header({title, action}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textH2(
          title,
        ),
        InkWell(
          onTap: () {
            action();
          },
          child: textH3("more",
              style: TextStyle(
                  color: cColorPink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
