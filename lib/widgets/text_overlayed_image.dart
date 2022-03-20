import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class TextOverlayedImage extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double imageHeight;

  TextOverlayedImage(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.imageHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(cSizeSm),
          child: Image.asset(
            imageUrl,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                cColorPrimaryDark.withOpacity(0),
                cColorPrimaryDark,
                cColorPrimaryDark,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              color: cColorPrimaryDark,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(cSizeSm)),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(cSizeSm),
              child: textH3(text,
                  style: TextStyle(
                      color: cColorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ))
      ],
    );
  }
}
