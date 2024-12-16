import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../resources/color.dart';
import '../resources/components/content.dart';
import '../resources/components/headerwidget.dart';
import '../resources/components/settlement_history_tile.dart';
import '../resources/image.dart';

// class TransactionScreen extends StatefulWidget {
//   const TransactionScreen({super.key});
//   @override
//   State<TransactionScreen> createState() => _TransactionScreenState();
// }

// class _TransactionScreenState extends State<TransactionScreen> {
//   List<String> tabs = [
//     "All",
//     "Recieved",
//     "Send",
//     "Settlement",
//   ];
//   int current = 0;
//   double changePositionedContainer() {
//     switch (current) {
//       case 0:
//         return -10;
//       case 1:
//         return 50;
//       case 2:
//         return ScreenUtil().setWidth(157);
//       case 3:
//         return ScreenUtil().setWidth(243);
//       default:
//         return 0;
//     }
//   }

//   double changeWidthOfContainer() {
//     switch (current) {
//       case 0:
//         return ScreenUtil().setWidth(40);
//       case 1:
//         return ScreenUtil().setWidth(100); // Adjust the width for index 1
//       case 2:
//         return ScreenUtil().setWidth(70); // Adjust the width for index 2
//       case 3:
//         return ScreenUtil().setWidth(95); // Adjust the width for index 3
//       default:
//         return ScreenUtil().setWidth(87);
//     }
//   }

//   Color getColor(int index) {
//     switch (index) {
//       case 0:
//         return AppColor.lightpurple; // Change color for "All"
//       case 1:
//         return Colors.lightGreen; // Change color for "Received"
//       case 2:
//         return AppColor.lightred; // Change color for "Sent"
//       case 3:
//         return AppColor.lightOrange; // Change color for "Settlement"
//       default:
//         return Colors.black;
//     }
//   }

//   double getFadeValue() {
//     switch (current) {
//       case 0:
//         return 0.0;
//       case 1:
//         return 0.6; // Adjust the fade value for index 1
//       case 2:
//         return 0.5; // Adjust the fade value for index 2
//       case 3:
//         return 0.87; // Adjust the fade value for index 3
//       default:
//         return 0.0;
//     }
//   }

//   BoxDecoration getGradientDecoration() {
//     return BoxDecoration(
//       gradient: LinearGradient(
//         colors: [
//           getColor(current),
//           getColor(current).withOpacity(0),
//         ],
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 1000),
//               decoration: getGradientDecoration(),
//               child: Column(
//                 children: [
//                   Container(
//                       margin: EdgeInsets.symmetric(
//                         horizontal: 10,
//                       ),
//                       child: HeaderWidget(
//                         bottomMargin: 8,
//                         title: "",
//                         notification: false,
//                       )),
//                   Consumer<Viwmodel>(builder: (context, value, child) {
//                     return Row(
//                       children: [
//                         Container(
//                           width: value.selectedWidth,
//                           height: 40,
//                           child: Content(
//                             data: "dsds",
//                             size: 14,
//                             color: Colors.white,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.amber,
//                           ),
//                         )
//                       ],
//                     );
//                   }),
//                   Row(
//                     children: [
//                       Container(
//                           child: Padding(
//                         padding: const EdgeInsets.all(16),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Content(
//                               weight: FontWeight.bold,
//                               data: "Transactions",
//                               size: 20.h,
//                               color: Colors.black,
//                             ),
//                           ],
//                         ),
//                       )),
//                       Container(
//                         margin: EdgeInsets.only(left: 150),
//                         height: 40.h,
//                         width: 40.w,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Colors.white.withOpacity(0.5)),
//                         child: InkWell(
//                             onTap: () {
//                               // Handle the tap here, e.g., show a date picker or navigate to a calendar screen.
//                               print('Calendar icon tapped!');
//                             },
//                             child: Image.asset(
//                               calender,
//                               height: 24.h,
//                               width: 24.w,
//                               color: Colors.black,
//                             )),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 width: changeWidthOfContainer(),
//                 height: ScreenUtil().setHeight(40.h),
//                 child: Stack(
//                   children: [
//                     AnimatedPositioned(
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       bottom: 0,
//                       left: changePositionedContainer(),
//                       duration: const Duration(milliseconds: 900),
//                       child: AnimatedContainer(
//                         // width:  changeWidthOfLine(),
//                         width: 77.75.w,
//                         height: ScreenUtil().setHeight(40),
//                         decoration: BoxDecoration(
//                           color: getColor(current),
//                           borderRadius: BorderRadius.circular(17),
//                         ),
//                         duration: const Duration(milliseconds: 1000),
//                         curve: Curves.fastLinearToSlowEaseIn,
//                       ),
//                     ),
//                     Positioned(
//                       top: 0,
//                       left: 0,
//                       right: 0,
//                       child: SizedBox(
//                         width: size.width,
//                         height: size.height * 0.04,
//                         child: ListView.builder(
//                             physics: const BouncingScrollPhysics(),
//                             scrollDirection: Axis.horizontal,
//                             itemCount: tabs.length,
//                             shrinkWrap: true,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding: EdgeInsets.only(
//                                   left: index == 0 ? 10 : 23,
//                                   top: 11,
//                                 ),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       current = index;
//                                     });
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                       horizontal: 12,
//                                     ),
//                                     child: Content(
//                                       color: current == index
//                                           ? Colors.white
//                                           : Colors.black,
//                                       data: tabs[index],
//                                       size: 12,
//                                       weight: current == index
//                                           ? FontWeight.bold
//                                           : FontWeight.normal,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Content(
//                 data: tabs[current],
//                 size: 20.h,
//                 weight: FontWeight.bold,
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Jay Shah",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RecentActivityTile(
//                         image: bank,
//                         name: "Robert J. Gray",
//                         date: "23/11 | 1:30pm",
//                         rupees: "Rs. 4,526/-"),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Viwmodel with ChangeNotifier {
//   int _selectedType = 1;
//   int get selectedType => _selectedType;

//   double _width = 1;
//   double get selectedWidth => _width;

//   double changeAccordingly(int index) {
//     switch (index) {
//       case 0:
//         return 40;
//       case 1:
//         return 60;
//       case 2:
//         return 90;
//       case 3:
//         return 120;
//       default:
//         return 0;
//     }
//   }

//   ChangeType(int index) {
//     _selectedType = index;
//     _width = changeAccordingly(index);
//   }
// }

// import 'package:flutter/material.dart';

// class AppColor {
//   static const Color lightpurple = Colors.purple;
//   static const Color lightred = Colors.red;
//   static const Color lightOrange = Colors.orange;
// }
// class TransactionScreen extends StatefulWidget {
//   const TransactionScreen({Key? key}) : super(key: key);
//   @override
//   State<TransactionScreen> createState() => _TransactionScreenState();
// }
// class _TransactionScreenState extends State<TransactionScreen> {
//   List<String> tabs = [
//     "All",
//     "Received",
//     "Sent",
//     "Settlement",
//   ];
//   int current = 0;
//   double changePositionedOfLine() {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double tabWidth = screenWidth / tabs.length;
//     switch (current) {
//       case 0:
//         return 0.0;
//       case 1:
//         return 0.25 * tabWidth;
//       case 2:
//         return 0.5 * tabWidth;
//       case 3:
//         return 0.75 * tabWidth;
//       default:
//         return 0.0;
//     }
//   }
//   double changeWidthOfLine() {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double tabWidth = screenWidth / tabs.length;
//     return 0.25 * tabWidth;
//   }
//   Color getColor(int index) {
//     switch (index) {
//       case 0:
//         return AppColor.lightpurple;
//       case 1:
//         return Colors.lightGreen;
//       case 2:
//         return AppColor.lightred;
//       case 3:
//         return AppColor.lightOrange;
//       default:
//         return Colors.black;
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 width: size.width * 0.8,
//                 height: 50,
//                 child: Stack(
//                   children: [
//                     // Positioned(
//                     //   bottom: 0,
//                     //   left: changePositionedOfLine(),
//                     //   child: Container(
//                     //     margin: const EdgeInsets.only(left: 10, bottom: 12),
//                     //     width: changeWidthOfLine(),
//                     //     height: 40,
//                     //     decoration: BoxDecoration(
//                     //       color: getColor(current),
//                     //       borderRadius: BorderRadius.circular(17),
//                     //     ),
//                     //   ),
//                     // ),
//                     SizedBox(
//                       width: size.width,
//                       height: 50,
//                       child: ListView.builder(
//                         // physics: const BouncingScrollPhysics(),
//                         scrollDirection: Axis.horizontal,
//                         itemCount: tabs.length,
//                         shrinkWrap: true,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 current = index;
//                               });
//                             },
//                             child: Positioned(
//                               left: changePositionedOfLine(),
//                               child: AnimatedContainer(
//                                 duration: Duration(seconds: 5),
//                                   padding: EdgeInsets.symmetric(horizontal: 12),
//                                 alignment: Alignment.center,
//                                 color: current == index
//                                     ? getColor(current)
//                                     : Colors.transparent,
//                                 child: Text(
//                                   tabs[index],
//                                   style: TextStyle(
//                                     color: current == index
//                                         ? Colors.black
//                                         : Colors.white,
//                                     fontWeight: current == index
//                                         ? FontWeight.bold
//                                         : FontWeight.normal,
//                                   ),
//                                 ),
//                                 curve: Curves.fastEaseInToSlowEaseOut,
//                               ),
//                             )
                            
//                             // Container(
//                             //   padding: EdgeInsets.symmetric(horizontal: 12),
//                             //   alignment: Alignment.center,
//                             //   color: current == index
//                             //       ? getColor(current)
//                             //       : Colors.transparent,
//                             //   child: Text(
//                             //     tabs[index],
//                             //     style: TextStyle(
//                             //       color: current == index
//                             //           ? Colors.black
//                             //           : Colors.white,
//                             //       fontWeight: current == index
//                             //           ? FontWeight.bold
//                             //           : FontWeight.normal,
//                             //     ),
//                             //   ),
//                             // ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// class AppColor {
//   static const Color lightpurple = Colors.purple;
//   static const Color lightred = Colors.red;
//   static const Color lightOrange = Colors.orange;
// }

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  List<String> tabs = [
    "All",
    "Received",
    "Sent",
    "Settlement",
  ];
  int current = 0;

  double changePositionedOfLine() {
    if (context == null) return 0.0; // Check for null context
    double screenWidth = MediaQuery.of(context).size.width;
    double tabWidth = screenWidth / tabs.length;
    switch (current) {
      case 0:
        return 0.0;
      case 1:
        return 0.25 * tabWidth;
      case 2:
        return 0.5 * tabWidth;
      case 3:
        return 0.75 * tabWidth;
      default:
        return 0.0;
    }
  }

  double changeWidthOfLine() {
    if (context == null) return 0.0; // Check for null context
    double screenWidth = MediaQuery.of(context).size.width;
    double tabWidth = screenWidth / tabs.length;
    return 0.25 * tabWidth;
  }

  // Color getColor(int index) {
  //   switch (index) {
  //     case 0:
  //       return AppColor.lightpurple;
  //     case 1:
  //       return Colors.lightGreen;
  //     case 2:
  //       return AppColor.lightred;
  //     case 3:
  //       return AppColor.lightOrange;
  //     default:
  //       return Colors.black;
  //   }
  // }

  Color getColor(int index) {
    switch (index) {
      case 0:
        return AppColor.lightpurple; // Change color for "All"
      case 1:
        return Colors.lightGreen; // Change color for "Received"
      case 2:
        return AppColor.lightred; // Change color for "Sent"
      case 3:
        return AppColor.lightOrange; // Change color for "Settlement"
      default:
        return Colors.black;
    }
  }
  double getFadeValue() {
    switch (current) {
      case 0:
        return 0.0;
      case 1:
        return 0.6; // Adjust the fade value for index 1
      case 2:
        return 0.5; // Adjust the fade value for index 2
      case 3:
        return 0.87; // Adjust the fade value for index 3
      default:
        return 0.0;
    }
  }
  BoxDecoration getGradientDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          getColor(current),
          getColor(current).withOpacity(0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blue,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                 decoration: getGradientDecoration(),
                child: Column(
                  children: [
                    HeaderWidget(
                      bottomMargin: 8,
                      title: "",
                      notification: false,
                    ),    
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Content(
                              weight: FontWeight.bold,
                              data: "Transactions",
                              size: 20.h,
                              color: Colors.black,
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Colors.white.withOpacity(0.5)),
                      child: InkWell(
                          onTap: () {
                            // Handle the tap here, e.g., show a date picker or navigate to a calendar screen.
                            print('Calendar icon tapped!');
                          },
                          child: Image.asset(
                            calender,
                            height: 24.h,
                            width: 24.w,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Stack(
                children: [
                  // Positioned(
                  //   bottom: 0,
                  //   left: changePositionedOfLine(),
                  //   child: Container(
                  //     margin: const EdgeInsets.only(left: 10, bottom: 12),
                  //     width: changeWidthOfLine(),
                  //     height: 40,
                  //     decoration: BoxDecoration(
                  //       color: getColor(current),
                  //       borderRadius: BorderRadius.circular(17),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: size.width,
                    height: 53.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 5, ),
                            padding: EdgeInsets.all( 20),
                            decoration: BoxDecoration(
              // color: AppColor.lightGrey,
              color: current == index
                                ? getColor(current)
                                : Colors.transparent,
              borderRadius: BorderRadius.circular(17.r)
              ),
                            // alignment: Alignment.center,
                            // color: AppColor.lightGrey,
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                color: current == index
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: current == index
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Content(
                              data: tabs[current], size: 18.h, weight: FontWeight.bold)),

                      RecentActivityTile(
                        image: uparrow,
                        name: "DaniyalKhan",
                        date: "02/03",
                        rupees: "100,000/-",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RecentActivityTile(
                        image: uparrow,
                        name: "DaniyalKhan",
                        date: "02/03",
                        rupees: "100,000/-",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RecentActivityTile(
                        image: bank,
                        name: "DaniyalKhan",
                        date: "02/03",
                        rupees: "100,000/-",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RecentActivityTile(
                        image: uparrow,
                        name: "DaniyalKhan",
                        date: "02/03",
                        rupees: "100,000/-",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RecentActivityTile(
                        image: uparrow,
                        name: "DaniyalKhan",
                        date: "02/03",
                        rupees: "100,000/-",
                      ),
                      SizedBox(
                        height: 10,
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
