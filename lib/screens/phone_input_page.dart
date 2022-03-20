import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/helpers.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/phone_verification_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class PhoneInputPage extends StatelessWidget {
  static const pageName = "/phoneInput";
  @override
  Widget build(BuildContext context) {
    setLightStatusBar();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(cSizeSm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: cSizeXl,
            ),
            textH2("Phone number"),
            SizedBox(
              height: cSizeMd,
            ),
            TextField(
              cursorColor: cColorPink,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: "+251912141513",
                  hintStyle: TextStyle(color: cColorDarkGray),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, PhoneVerificationPage.pageName);
                    },
                    child: textH3("Next", color: cColorPink)))
          ],
        ),
      ),
    );
  }
}
