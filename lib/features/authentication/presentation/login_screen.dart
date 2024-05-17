import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_buttons.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/core/meida_query_relative_size.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
      body: SingleChildScrollView(
        child: Stack(children: [
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
                  horizontal: 40,
                  vertical: getMediaQueryHeight(context, 0.09),
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
                          "Login",
                          style:
                              getRobotoFont(FontWeight.w700, 20, textColorGrey),
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
                          height: getMediaQueryHeight(context, 0.033),
                        ),
                      ],
                    ),
                    getPrimaryElevatedButton(
                        context, "Login", primaryColor, Colors.white),
                    SizedBox(
                      height: getMediaQueryHeight(context, 0.045),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: GoogleFonts.roboto(
                              color: const Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        )),
                    // getPrimaryOutlinedButton(
                    //     context, "Sign Up", Colors.transparent, textColorGrey),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 0, child: SvgPicture.asset("assets/images/top_lines.svg")),
          Positioned(
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
                right: MediaQuery.of(context).size.width * 220 / deviceWidth,
                bottom:
                    MediaQuery.of(context).size.height * 101 / deviceHeight),
            child: Flexible(
              child: Text(
                "Welcome Back",
                style: getRobotoFont(FontWeight.w700, 30, primaryColor),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
