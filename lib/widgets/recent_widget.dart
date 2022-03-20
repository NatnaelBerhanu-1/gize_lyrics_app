import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class Recent extends StatelessWidget {
  final String title;
  final String profileUrl;
  const Recent({Key? key, required this.title, required this.profileUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: cSizeSm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(cSizeXsm),
            child: Image.asset(profileUrl,
                width: 140, height: 140, fit: BoxFit.cover),
          ),
          SizedBox(height: cSizeXsm),
          textH3(title)
        ],
      ),
    );
  }
}
