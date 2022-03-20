import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/lyrics_detail_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

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
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LyricsPage.pageName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: cSizeSm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(cSizeSm),
              child: Image.asset(imageUrl,
                  width: 80, height: 80, fit: BoxFit.cover),
            ),
            SizedBox(
              width: cSizeMd,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textH3(artistName),
                textNormal(
                  songName,
                )
              ],
            ),
            Spacer(),
            Icon(Icons.favorite_outline, size: 30)
          ],
        ),
      ),
    );
  }
}
