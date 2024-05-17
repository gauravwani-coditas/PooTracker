import 'package:flutter/material.dart';

double getMediaQueryHeight(BuildContext context, double relativeSize) {
  return MediaQuery.of(context).size.height * relativeSize;
}
