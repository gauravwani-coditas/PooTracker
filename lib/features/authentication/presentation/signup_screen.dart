import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_buttons.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/core/meida_query_relative_size.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    bool isChecked = false;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.only(
                    top: getMediaQueryHeight(context, 270 / deviceHeight),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width * 40 / deviceWidth,
                    vertical: getMediaQueryHeight(context, 81 / deviceHeight),
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getMediaQueryHeight(context, 0.03),
                          ),
                          Text(
                            "Sign Up",
                            style: getRobotoFont(
                                FontWeight.w700, 20, textColorGrey),
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Enter your Email",
                              hintStyle: getRobotoFont(
                                  FontWeight.w400, 16, textColorGrey),
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(context, 0.030),
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: getRobotoFont(
                                  FontWeight.w400, 16, textColorGrey),
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(context, 0.03),
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Re Enter your password",
                              hintStyle: getRobotoFont(
                                  FontWeight.w400, 16, textColorGrey),
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(context, 0.033),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {}),
                              RichText(
                                text: TextSpan(
                                  text: "Agree app ",
                                  style: getRobotoFont(FontWeight.w400, 16,
                                      const Color.fromRGBO(153, 153, 153, 1)),
                                  children: [
                                    TextSpan(
                                        text: "Policy",
                                        style: GoogleFonts.roboto(
                                            decoration:
                                                TextDecoration.underline)),
                                    const TextSpan(text: " and "),
                                    TextSpan(
                                        text: "Term",
                                        style: GoogleFonts.roboto(
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      getPrimaryElevatedButton(
                          context, "Sign Up", primaryColor, Colors.white),
                      SizedBox(
                        height: getMediaQueryHeight(context, 0.055),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: GoogleFonts.roboto(
                                color: const Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                right: 0,
                top: 0,
                child: SvgPicture.asset("assets/images/top_lines.svg")),
            Positioned(
                left: 0,
                bottom: 0,
                child: SvgPicture.asset("assets/images/bottom_lines.svg")),
            Padding(
                padding: EdgeInsets.only(
                  top: getMediaQueryHeight(context, 237 / deviceHeight),
                  left: MediaQuery.of(context).size.width * 40 / deviceWidth,
                ),
                child: SvgPicture.asset(
                    "assets/images/authentication/profile_image.svg")),
            Padding(
              padding: EdgeInsets.only(
                  top: getMediaQueryHeight(
                    context,
                    99 / deviceHeight,
                  ),
                  left: MediaQuery.of(context).size.width * 40 / deviceWidth,
                  right: MediaQuery.of(context).size.width * 194 / deviceWidth),
              child: Flexible(
                child: Text(
                  "Create New Account",
                  style: getRobotoFont(FontWeight.w700, 30, primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
