import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/phone_input_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class PersonalInfoPage extends StatelessWidget {
  static const pageName = "/personalInfo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(cSizeSm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: cSizeXl,
            ),
            textH2("Enter your name"),
            SizedBox(
              height: cSizeMd,
            ),
            TextField(
              cursorColor: cColorPink,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: "John Doe",
                  hintStyle: TextStyle(color: cColorDarkGray),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PhoneInputPage.pageName);
                    },
                    child: textH3("Next", color: cColorPink)))
          ],
        ),
      ),
    );
  }
}
