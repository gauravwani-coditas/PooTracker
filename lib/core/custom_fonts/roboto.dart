import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getRobotoFont(
  FontWeight fontWeight,
  double fontSize,
  Color fontColor,
) {
  return GoogleFonts.roboto(
      fontWeight: fontWeight, fontSize: fontSize, color: fontColor);
}
