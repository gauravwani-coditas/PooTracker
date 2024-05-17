import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/features/dash_board/domain/entities/day.dart';

List<DayEntity> daysList = [
  DayEntity(date: 6, day: "Mon", pooImagePaths: [
    "assets/images/poo_images/poo_brown.svg",
    "assets/images/poo_images/poo_orange.svg"
  ]),
  DayEntity(
      date: 7,
      day: "Tue",
      pooImagePaths: ["assets/images/poo_images/poo_orange.svg"]),
  DayEntity(date: 8, day: "Wed", pooImagePaths: [
    "assets/images/poo_images/poo_grey.svg",
    "assets/images/poo_images/poo_brown.svg"
  ]),
  DayEntity(date: 9, day: "Thus", pooImagePaths: [
    "assets/images/poo_images/poo_grey.svg",
    "assets/images/poo_images/poo_orange.svg"
  ]),
  DayEntity(date: 10, day: "Fri", pooImagePaths: [
    "assets/images/poo_images/poo_brown.svg",
    "assets/images/poo_images/poo_orange.svg"
  ]),
];

Widget daysListView(BuildContext context) {
  return ListView.builder(
    itemCount: daysList.length,
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return dayListItem(index, context);
    },
  );
}

Widget dayListItem(int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: OutlinedButton(
        onPressed: () {

          
        },

        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: Text(
                  "${daysList[index].date}",
                  style: getRobotoFont(FontWeight.w300, 35, textColorGrey),
                ),
              ),
              Flexible(
                child: Text(
                  daysList[index].day,
                  style: getRobotoFont(FontWeight.w300, 16, textColorGrey),
                ),
              ),
              Row(
                children: daysList[index]
                    .pooImagePaths
                    .map((imagePath) => Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: SvgPicture.asset(imagePath),
                        ))
                    .toList(),
              )
            ],
          ),
        )),
  );
}
