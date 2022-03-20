import 'package:flutter/material.dart';
import 'package:lyrics_app/screens/artist_detail_page.dart';
import 'package:lyrics_app/screens/lyrics_detail_page.dart';
import 'package:lyrics_app/screens/main_page/main_page.dart';
import 'package:lyrics_app/screens/personal_info_page.dart';
import 'package:lyrics_app/screens/phone_input_page.dart';
import 'package:lyrics_app/screens/phone_verification_page.dart';
import 'package:lyrics_app/screens/profile_page.dart';
import 'package:lyrics_app/screens/splash_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainPage.pageName:
        return _materialPageRoute(const MainPage());
      case ArtistDetailPage.pageName:
        return _materialPageRoute(ArtistDetailPage());
      case LyricsPage.pageName:
        return _materialPageRoute(LyricsPage());
      case ProfilePage.pageName:
        return _materialPageRoute(ProfilePage());
      case PhoneInputPage.pageName:
        return _materialPageRoute(PhoneInputPage());
      case PhoneVerificationPage.pageName:
        return _materialPageRoute(PhoneVerificationPage());
      case PersonalInfoPage.pageName:
        return _materialPageRoute(PersonalInfoPage());
      default:
        return _materialPageRoute(SplashPage());
    }
  }

  static _materialPageRoute(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }
}
