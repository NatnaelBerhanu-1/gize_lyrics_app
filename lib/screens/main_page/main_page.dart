import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/main_page/pages/home_page.dart';
import 'package:lyrics_app/screens/main_page/pages/libraries_page.dart';
import 'package:lyrics_app/screens/main_page/pages/search_page.dart';
import 'package:lyrics_app/screens/main_page/pages/settings_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class MainPage extends StatefulWidget {
  static const pageName = "/main";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _pageViews = [HomePage(), SearchPage(), LibrariesPage(), SettingsPage()];
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cColorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: cSizeSm),
          child: _pageViews[_activeIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: cColorWhite,
        selectedItemColor: cColorPink,
        unselectedItemColor: cColorPrimaryDark.withOpacity(0.5),
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        iconSize: 30,
        currentIndex: _activeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (index) {
          setState(() {
            _activeIndex = index;
          });
        },
      ),
    );
  }
}

class Song extends StatelessWidget {
  final String imageUrl;
  final String artistName;
  final String songName;
  const Song({
    Key? key,
    required this.imageUrl,
    required this.artistName,
    required this.songName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: cSizeSm),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(cSizeSm),
            child:
                Image.asset(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
          ),
          SizedBox(
            width: cSizeMd,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [textH3(artistName), textNormal(songName)],
          ),
        ],
      ),
    );
  }
}
