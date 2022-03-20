import 'package:flutter/material.dart';
import 'package:lyrics_app/configs/colors.dart';
import 'package:lyrics_app/configs/size_constants.dart';
import 'package:lyrics_app/widgets/text_widgets.dart';

class ProfilePage extends StatelessWidget {
  static const pageName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(cSizeSm),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: cSizeSm,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, size: 30)),
                  SizedBox(width: cSizeMd),
                  textH1("Profile"),
                ],
              ),
              SizedBox(
                height: cSizeMd,
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    color: cColorDarkGray.withOpacity(0.2),
                    // border: Border.all(
                    //     color: cColorDarkGray.withOpacity(0.5), width: 5),
                    borderRadius: BorderRadius.circular(130)),
                child: Center(
                  child: Icon(Icons.person,
                      color: cColorDarkGray.withOpacity(0.5), size: 100),
                ),
              ),
              SizedBox(
                height: cSizeMd,
              ),
              textH3("Your name", color: cColorDarkGray),
              TextFormField(
                initialValue: "Natnael Berhanu",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                cursorColor: cColorPink,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: cColorPink,
                        ))),
              ),
              SizedBox(
                height: cSizeSm,
              ),
              textH3("Your phone", color: cColorDarkGray),
              TextFormField(
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                cursorColor: cColorPink,
                initialValue: "0919298888",
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: cColorPink,
                        ))),
              ),
              SizedBox(
                height: cSizeSm,
              ),
              textH3("Your email", color: cColorDarkGray),
              TextFormField(
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                cursorColor: cColorPink,
                initialValue: "natnaelberhanu@gmail.com",
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: cColorPink,
                        ))),
              ),
              SizedBox(
                height: cSizeMd,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(cColorPink),
                    ),
                    onPressed: () {},
                    child: textH3("Update",
                        style: TextStyle(
                            color: cColorWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
