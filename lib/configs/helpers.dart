import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lyrics_app/configs/colors.dart';

setDarkStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: cColorPrimaryDark,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light // status bar color
      ));
}

setLightStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
}

setDarkNavigationBarAndStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: cColorPrimaryDark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light // status bar color
      ));
}

setLightNavigationBarAndStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
}
