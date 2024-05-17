import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';

Widget getPrimaryOutlinedButton(
    BuildContext context, String text, Color borderColor,Color fontColor,double fontSize,FontWeight fontWeight) {
  return SizedBox(
    width: double.infinity,
    child: OutlinedButton(
      onPressed: () {},
      
      style: OutlinedButton.styleFrom(
       side: BorderSide(
        width: 2,
        color: borderColor,
       )
        

      ),
      child: Text(
        text,
        style: getRobotoFont(fontWeight, fontSize, fontColor),
      ),
    ),
  );
}

Widget getPrimaryElevatedButton(
    BuildContext context, String text, Color backgroundColor, Color color) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          foregroundColor: MaterialStateProperty.all<Color>(color)),
      child: Text(
        text,
        style: getRobotoFont(FontWeight.w700, 20, Colors.white),
      ),
    ),
  );
}
