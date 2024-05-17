import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pootracker/core/colors.dart';
import 'package:pootracker/core/custom_buttons.dart';
import 'package:pootracker/core/custom_fonts/roboto.dart';

class CreateLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          SvgPicture.asset(
            "assets/images/top_lines.svg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topRight,
          ),

          SvgPicture.asset(
            "assets/images/bottom_lines.svg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomLeft,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              children: [
                  const Expanded(flex: 50, child: SizedBox(),),
                  Text("Create log",style: getRobotoFont(FontWeight.w700, 30,primaryColor ),),
                  const Expanded(flex: 47, child: SizedBox(),),
                  Row(
                    children: [
                    //  getPrimaryOutlinedButton(context, "2020/06/06",Colors.amber,Colors.greenAccent),
                      // OutlinedButton(onPressed: (){}, child: const Text("2020/06/06"),),
                      //  OutlinedButton(onPressed: (){}, child: const Text("2020/06/06"),),
                    
                    ],
                  )
              ],
            ),

            
          )

          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 20, vertical: 132),
          //   child: Column(
          //     children: [
          //       //buttons row

          //       Row(
          //         children: [
          //           Expanded(
          //             flex: 12,
          //             child: OutlinedButton(
          //                 onPressed: () {},
          //                 child: Row(
          //                   children: [
          //                     Icon(
          //                       Icons.calendar_month_outlined,
          //                       color: Color.fromRGBO(153, 153, 153, 1),
          //                     ),
          //                     Expanded(flex: 1, child: SizedBox()),
          //                     Flexible(
          //                       child: Text(
          //                         "2020/06/06",
          //                         style: getRobotoFont(
          //                           FontWeight.w400,
          //                           16,
          //                           const Color.fromRGBO(153, 153, 153, 1),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 )),
          //           ),
          //           Expanded(flex: 1, child: SizedBox()),
          //           Expanded(
          //             flex: 12,
          //             child: OutlinedButton(
          //                 onPressed: () {},
          //                 child: Row(
          //                   children: [
          //                     Icon(
          //                       Icons.calendar_month_outlined,
          //                       color: Color.fromRGBO(153, 153, 153, 1),
          //                     ),
          //                     Flexible(
          //                       child: Text(
          //                         "10:20 - 10:30 am",
          //                         style: getRobotoFont(
          //                           FontWeight.w400,
          //                           20,
          //                           const Color.fromRGBO(153, 153, 153, 1),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 )),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
