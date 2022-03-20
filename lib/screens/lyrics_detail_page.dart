import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/helpers.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LyricsPage extends StatefulWidget {
  static const String pageName = "/lyricsDetail";

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
              "https://www.youtube.com/watch?v=Pvdw7qc0skw&list=RDPvdw7qc0skw&start_radio=1&ab_channel=Yohana%E1%8B%AE%E1%88%90%E1%8A%93") ??
          "",
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    setLightStatusBar();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setDarkStatusBar();
    return WillPopScope(
      onWillPop: () async {
        setLightStatusBar();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 250,
                width: kScreenWidth(context),
                color: Colors.black,
                child: YoutubePlayer(
                  controller: _controller,
                ),
              ),
              Container(
                width: kScreenWidth(context),
                height: kScreenHeight(context) - 250,
                decoration: BoxDecoration(
                  color: cColorWhite,
                ),
                margin: EdgeInsets.only(top: 250),
                padding: const EdgeInsets.all(cSizeSm),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: cSizeSm,
                        width: kScreenWidth(context),
                      ),
                      Text('''
አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nከአመሌ ሌ ሌ ሌ ላየች መርጣ ፍቅሬን\nበደሌ ሌ ሌ ሌ ላለፈች በይቅርታ ሁሌ\nለግሌ ሌ ሌ ሌ ለንግስቷ ፍቅሬ\nይዜ ቃሌ ሌ ሌ ሌ ልን ቀለበቷ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nአዋጅ አዋጅ አዋጅ አዋጅ አዋጅ አዋጅ\nከአመሌ ሌ ሌ ሌ ላየች መርጣ ፍቅሬን\nበደሌ ሌ ሌ ሌ ላለፈች በይቅርታ ሁሌ\nለግሌ ሌ ሌ ሌ ለንግስቷ ፍቅሬ\nይዜ ቃሌ ሌ ሌ ሌ ልን ቀለበቷ''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            height: 1.8,
                          )),
                      SizedBox(
                        height: 100,
                        width: kScreenWidth(context),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: cColorDarkGray,
                          blurRadius: 8,
                          spreadRadius: 4,
                        )
                      ],
                      color: cColorPrimaryDark,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(cSizeSm))),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: cSizeSm),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset("assets/images/artist_three.jfif",
                              width: 40, height: 40, fit: BoxFit.cover),
                        ),
                        SizedBox(width: cSizeSm),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yohanna (በይ እሺ)",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: cColorWhite)),
                            SizedBox(width: cSizeSm),
                            Text("1.2k likes",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: cColorWhite)),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite_outline,
                          color: cColorWhite,
                        ),
                        SizedBox(
                          width: cSizeSm,
                        ),
                        Icon(
                          Icons.link,
                          color: cColorWhite,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: cColorPrimaryDark.withOpacity(0.5)),
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.arrow_back,
                            color: Colors.white, size: 30),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
