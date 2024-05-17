import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_buttons.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/core/meida_query_relative_size.dart';

class ResLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
      body: Stack(children: [
        SvgPicture.asset(
          "assets/images/top_lines.svg",
          alignment: Alignment.topRight,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        SvgPicture.asset(
          "assets/images/bottom_lines.svg",
          alignment: Alignment.bottomRight,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Column(
          children: [
           

            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 194,
                ),
                child: Text(
                  "Welcome Back",
                  style: getRobotoFont(FontWeight.w700, 30, primaryColor),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   color: const Color.fromARGB(255, 220, 172, 172),
                  //   child: Column(
                  //     children: [
                  //       const Expanded(flex: 99, child: SizedBox()),

                  //       Padding(
                  //         padding: const EdgeInsets.only(left: 40, right: 194),
                  //         child: Text(
                  //           "Welcome Back",
                  //           style: getRobotoFont(FontWeight.w700, 30, primaryColor),
                  //         ),
                  //       ),

                  //       const Expanded(
                  //         flex: 101,
                  //         child: SizedBox(),
                  //       ),

                  //       // const Expanded(
                  //       //   flex: 101,
                  //       //   child: SizedBox(),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                  Expanded(flex: 40, child: SizedBox()),

                  Text(
                    "Login",
                    style: getRobotoFont(FontWeight.w700, 20, textColorGrey),
                  ),
                  const Expanded(flex: 40, child: SizedBox()),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      hintStyle:
                          getRobotoFont(FontWeight.w400, 16, textColorGrey),
                    ),
                  ),
                  const Expanded(flex: 40, child: SizedBox()),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle:
                          getRobotoFont(FontWeight.w400, 16, textColorGrey),
                    ),
                  ),
                  const Expanded(flex: 40, child: SizedBox()),
                  getPrimaryElevatedButton(
                      context, "Login", primaryColor, Colors.white),
                  Row(
                    children: [
                      const Expanded(
                        flex: 147,
                        child: SizedBox(),
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
                        ),
                      ),
                      const Expanded(flex: 146, child: SizedBox()),
                    ],
                  ),
                  const Expanded(flex: 40, child: SizedBox()),
                  getPrimaryOutlinedButton(
                      context,
                      "Sign Up",
                      Color.fromRGBO(153, 153, 153, 1),
                      Color.fromRGBO(153, 153, 153, 1),
                      20,
                      FontWeight.w400),
                  const Expanded(flex: 104, child: SizedBox()),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
