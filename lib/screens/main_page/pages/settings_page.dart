import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/screens/phone_input_page.dart';
import 'package:lyrics_app/screens/profile_page.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: cSizeSm,
        ),
        textH1("Settings"),
        SizedBox(
          height: cSizeMd,
        ),
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, ProfilePage.pageName);
            },
            child: textH2("Profile")),
        SizedBox(
          height: cSizeSm,
        ),
        InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    elevation: 0,
                    contentPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    content: Container(
                      width: kScreenWidth(context),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      height: 170,
                      child: Column(
                        children: [
                          textH2("Logout"),
                          SizedBox(
                            height: cSizeXsm,
                          ),
                          textH3("Are you sure?",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 18)),
                          SizedBox(
                            height: cSizeSm,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: textH3("Cancel", color: cColorPink),
                              ),
                              Spacer(),
                              MaterialButton(
                                  color: cColorPink,
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    // TODO: implement logout
                                    Navigator.of(context).pushReplacementNamed(
                                        PhoneInputPage.pageName);
                                  },
                                  child: textH3(
                                    "Logout",
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: textH2("Logout"))
      ],
    );
  }
}
