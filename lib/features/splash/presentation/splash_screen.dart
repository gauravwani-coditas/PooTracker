import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/core/meida_query_relative_size.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: getMediaQueryHeight(context, 208 / deviceHeight),
                  bottom: getMediaQueryHeight(context, 141 / deviceHeight)),
              child: Text(
                "PooTracker",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
            SvgPicture.asset(
                "assets/images/spalsh_images/logopootracker_logo.svg"),
            Padding(
                padding: EdgeInsets.only(
                    top: getMediaQueryHeight(context, 325 / deviceHeight)),
                child: Text(
                  "version 1.0",
                  style: getRobotoFont(FontWeight.w400, 16, Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
