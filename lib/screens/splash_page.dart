import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/helpers.dart';
import 'package:lyrics_app/screens/phone_input_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      setLightNavigationBarAndStatusBar();
      Navigator.of(context).pushReplacementNamed(PhoneInputPage.pageName);
    });
    return Scaffold(
        backgroundColor: cColorPrimaryDark,
        body: Center(
          child: textH1("GIZE LYRICS", color: cColorPink),
        ));
  }
}
