import 'package:flutter/cupertino.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/text_overlayed_image.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class LibrariesPage extends StatelessWidget {
  double imageHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: cSizeSm,
        ),
        textH1("Library"),
        SizedBox(
          height: cSizeMd,
        ),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: TextOverlayedImage(
                    imageHeight: imageHeight,
                    imageUrl: "assets/images/artist_one.jfif",
                    text: "Liked songs"),
              ),
              SizedBox(
                width: cSizeMd,
              ),
              Expanded(
                  child: TextOverlayedImage(
                      imageHeight: imageHeight,
                      imageUrl: "assets/images/artist_two.jfif",
                      text: "Liked artists")),
            ],
          ),
        ),
        SizedBox(height: cSizeMd),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: TextOverlayedImage(
                    imageHeight: imageHeight,
                    imageUrl: "assets/images/artist_one.jfif",
                    text: "Most Liked songs"),
              ),
              SizedBox(
                width: cSizeMd,
              ),
              Expanded(
                  child: TextOverlayedImage(
                      imageHeight: imageHeight,
                      imageUrl: "assets/images/artist_two.jfif",
                      text: "Most Liked artists")),
            ],
          ),
        ),
      ],
    );
  }
}
