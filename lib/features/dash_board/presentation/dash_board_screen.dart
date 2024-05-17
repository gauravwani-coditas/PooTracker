import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';
import 'package:pootracker/features/dash_board/presentation/widgets/day_list_item.dart';
import 'package:pie_chart/pie_chart.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: SvgPicture.asset("assets/images/top_lines.svg"),
            ),
            Positioned(
                bottom: 0,
                child: SvgPicture.asset("assets/images/bottom_lines.svg")),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Dash Board",
                          style:
                              getRobotoFont(FontWeight.w700, 30, primaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 130),
                        child: SvgPicture.asset(
                            "assets/images/authentication/profile_image.svg"),
                      ),
                    ],
                  ),
                  //list of days
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      height: 102,
                      child: daysListView(context),
                    ),
                  ),
                  //calendar button
                  Padding(
                    padding: const EdgeInsets.only(left: 220,top: 34),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              "assets/images/dashboard_images/view_arrow.svg"),
                          Flexible(
                              child: Text(
                            "View Calendar",
                            style: getRobotoFont(FontWeight.w400, 16,
                                const Color.fromRGBO(238, 164, 107, 1)),
                          )),
                        ],
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Insight",
                            style: getRobotoFont(
                                FontWeight.w700, 20, textColorGrey),
                          ),
                        ),
                        //elevated button
                        Padding(
                          padding: const EdgeInsets.only(left: 79),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        primaryColor),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        textColorGrey)),
                            child: Text(
                              "Week",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                        //outlinedButton
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(153, 153, 153, 1),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color.fromRGBO(153, 153, 153, 1),
                                ),
                              ),
                            ),
                            child: Text(
                              "Month",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 31,
                    ),
                    child: Center(
                      child: Flexible(
                        child: Text(
                          "Type chart compare",
                          style: getRobotoFont(
                            FontWeight.w700,
                            16,
                            const Color.fromRGBO(51, 51, 51, 1),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 29),
                    child: PieChart(
                      dataMap: {
                        "Type 01": 80,
                        "Type 02": 50,
                        "Type 03": 30,
                        "Type 04": 30,
                      },
                      centerWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Type 01",
                            style: getRobotoFont(
                                FontWeight.w400, 16, primaryColor),
                          ),
                          Text(
                            "40%",
                            style: getRobotoFont(
                                FontWeight.w700, 50, primaryColor),
                          ),
                        ],
                      ),
                      // colorList: const [
                      //   Color.fromRGBO(1, 170, 79, 1),
                      //   Color.fromRGBO(1, 170, 79, 0.8),
                      //   Color.fromRGBO(1, 170, 79, 0.6),
                      //   Color.fromRGBO(4, 175, 84, 1)
                      // ],
                      baseChartColor: primaryColor,
                      chartType: ChartType.ring,
                      chartRadius: 160,
                      ringStrokeWidth: 50,
                      chartLegendSpacing: 40,
                      initialAngleInDegree: 0,
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: false,
                        decimalPlaces: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  print("Create new log button clicked");
                },
                child: Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 22, left:38),
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
