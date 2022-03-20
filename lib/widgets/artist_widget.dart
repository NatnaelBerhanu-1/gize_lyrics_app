import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/artist_detail_page.dart';
import 'package:lyrics_app/widgets/animation/radial_expansion.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class Artist extends StatelessWidget {
  final String artistName;
  final String profileUrl;

  Artist({Key? key, required this.artistName, required this.profileUrl})
      : super(key: key);
  static Interval opacityCurve =
      const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(cSizeXsm),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder<void>(pageBuilder:
              (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
            return AnimatedBuilder(
                animation: animation,
                builder: (BuildContext context, Widget? child) {
                  return Opacity(
                    opacity: opacityCurve.transform(animation.value),
                    child: ArtistDetailPage(),
                  );
                });
          }));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Hero(
                  createRectTween: (begin, end) =>
                      MaterialRectCenterArcTween(begin: begin, end: end),
                  tag: "artist_image",
                  child: RadialExpansion(
                    maxRadius: 80,
                    child: LayoutBuilder(
                      builder: (context, constraints) => Image.asset(profileUrl,
                          width: 80, height: 80, fit: BoxFit.contain),
                    ),
                  ),
                )),
            SizedBox(
              height: cSizeXsm,
            ),
            textH3(artistName)
          ],
        ),
      ),
    );
  }
}
