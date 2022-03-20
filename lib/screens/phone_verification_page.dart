import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/main_page/main_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationPage extends StatelessWidget {
  static const pageName = "/phoneVerfication";
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
            textH2("Verification code"),
            SizedBox(
              height: cSizeMd,
            ),
            // TextField(
            //   cursorColor: cColorPink,
            //   autofocus: true,
            //   maxLength: 6,
            //   maxLines: 1,
            //   decoration: OTPTextField(
            //       hintText: "_ _ _ _ _ _",
            //       hintStyle: TextStyle(color: cColorDarkGray),
            //       focusedBorder: InputBorder.none,
            //       border: InputBorder.none
            //       ),
            //   style: TextStyle(
            //     fontSize: 32,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            PinCodeTextField(
              appContext: context,
              onChanged: (value) {},
              length: 6,
              onCompleted: (value) {},
              cursorColor: cColorPink,
              textStyle: TextStyle(color: cColorPink, fontSize: 32),
              pinTheme: PinTheme(
                  activeColor: cColorPink,
                  inactiveColor: cColorDarkGray,
                  selectedColor: cColorPink),
            ),
            Spacer(),
            Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: textH3("Back", color: cColorDarkGray)),
                    Spacer(),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              //TODO: check if user is new and redirect to persona_info_page
                              context,
                              MainPage.pageName,
                              (_) => false);
                        },
                        child: textH3("Next", color: cColorPink)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
