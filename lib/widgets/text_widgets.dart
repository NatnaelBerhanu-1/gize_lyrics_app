import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';

Widget textH1(String text, {Color? color}) => Text(text,
    style: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.bold,
        color: color ?? cColorPrimaryDark));

Widget textH2(String text, {Color? color}) => Text(text,
    textAlign: TextAlign.left,
    style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color ?? cColorPrimaryDark));

Widget textH3(String text, {TextStyle? style, Color? color}) => Text(text,
    style: style ??
        TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color ?? cColorPrimaryDark));

Widget textNormal(String text, {Color? color}) => Text(
      text,
      style: TextStyle(fontSize: 18, color: color??cColorPrimaryDark),
    );
