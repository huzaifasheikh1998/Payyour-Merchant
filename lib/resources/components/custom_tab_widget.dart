// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'content.dart';

// class CustomTab extends StatefulWidget {
//   const CustomTab({super.key});
//   @override
//   State<CustomTab> createState() => _CustomTabState();
// }
// class _CustomTabState extends State<CustomTab> {
//   List<String> tabs = [
//     "All",
//     "Recieved",
//     "Send",
//     "Settel",
//   ];
//   int current = 0;
//   double changePositionedOfLine() {
//     switch (current) {
//       case 0:
//         return -9.w;
//       case 1:
//         return 52.w;
//       case 2:
//         return 161.w;
//       case 3:
//         return 218.w;
//       default:
//         return 0;
//     }
//   }
//     double changeWidthOfLine() {
//     switch (current) {
//       case 0:
//         return 60;
//       case 1:
//         return 100; // Adjust the width for index 1
//       case 2:
//         return 70.w; // Adjust the width for index 2
//       case 3:
//         return 95.w; // Adjust the width for index 3
//       default:
//         return 87;
//     }
//   }
//   // Color getColor(int index) {
//   //   switch (index) {
//   //     case 0:
//   //       return AppColor.backgroundgrey; // Change color for "All"
//   //     case 1:
//   //       return AppColor.backgroundgrey; // Change color for "Received"
//   //     case 2:
//   //       return AppColor.backgroundgrey; // Change color for "Sent"
//   //     case 3:
//   //       return AppColor.backgroundgrey; // Change color for "Settlement"
//   //     default:
//   //       return Colors.black;
//   //   }
//   // }
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.r), ),
//         // margin: EdgeInsets.only(
//         //   top: 6.h,
//         // ),
//         width: 333.w,
//         height: 50.h,
//         // width: size.width,
//         // height: size.height * 0.04,
//         child: Stack(
//           children: [
//             AnimatedPositioned(
//               curve: Curves.fastLinearToSlowEaseIn,
//               bottom: 0,
//               left: changePositionedOfLine(),
//               duration: const Duration(milliseconds: 900),
//               child: AnimatedContainer(
//                 margin: const EdgeInsets.only(left: 10, bottom: 12),
//                 width:  changeWidthOfLine(),
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color:  Colors.black,
//                   borderRadius: BorderRadius.circular(17.r),
//                 ),
//                 duration: const Duration(milliseconds: 1000),
//                 curve: Curves.fastLinearToSlowEaseIn,
//               ),
//             ),
//             Positioned(
//               top: 0,
//               left: 0,
//               right: 0,
//               child: SizedBox(
//                 width: size.width,
//                 height: size.height * 0.04,
//                 child: ListView.builder(
//                     physics: const BouncingScrollPhysics(),
//                     scrollDirection: Axis.horizontal,
//                     itemCount: tabs.length,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: EdgeInsets.only(
//                           left: index == 0 ? 10 : 23,
//                           top: 11,
//                         ),
//                         child: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               current = index;
//                             });
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 12,
//                             ),
//                             child: Content(
//                               color: current==index?Colors.white:Colors.black,
//                               data: tabs[index],
//                               size: 12,
//                               weight: current == index
//                                   ? FontWeight.bold
//                                   : FontWeight.normal,
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'dart:math';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pay_your/resources/components/content.dart';

// class CustomTabIndicator extends StatefulWidget {
//   const CustomTabIndicator({super.key});

//   @override
//   State<CustomTabIndicator> createState() => _CustomTabIndicatorState();
// }

// class _CustomTabIndicatorState extends State<CustomTabIndicator> {

//   double containerSize = 100.0;
//   Color containerColor = Colors.blue;
//   BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(8);

//   void changeContainerProperties(){
//     setState(() {
//       containerSize = Random().nextDouble()* 200 + 50;
//       containerColor = Color.fromARGB(
//         Random().nextInt(256), 
//       Random().nextInt(256), 
//       Random().nextInt(256),
//       Random().nextInt(256),
//       );
//       borderRadiusGeometry =BorderRadius.circular(Random().nextDouble()*100);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GestureDetector(
//           onTap: changeContainerProperties,
//           child: AnimatedContainer(
//             width: containerSize,
//             height: containerSize,
//             duration: Duration(seconds: 2),
//             decoration: BoxDecoration(
//             color: containerColor,
//             borderRadius: borderRadiusGeometry,
//             ),
//             child: Center(
//               child: Content(data: "data", size: 20.h),
//             ),
//             ),
//         ),
//       ),
//     );
//   }
// }


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> tabs = [
//     "Popular",
//     "Most Visited",
//     "Recent",
//     "Explore",
//   ];
//   int current = 0;

//   double changePositionedOfLine() {
//     switch (current) {
//       case 0:
//         return 0;
//       case 1:
//         return 78;
//       case 2:
//         return 192;
//       case 3:
//         return 263;
//       default:
//         return 0;
//     }
//   }

//   double changeContainerWidth() {
//     switch (current) {
//       case 0:
//         return 50;
//       case 1:
//         return 80;
//       case 2:
//         return 50;
//       case 3:
//         return 50;
//       default:
//         return 0;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     "BeautyBar",
//         //     style: GoogleFonts.ubuntu(fontSize: 22, fontWeight: FontWeight.w500),
//         //   ),
//         //   actions: const [
//         //     Padding(
//         //       padding: EdgeInsets.all(10.0),
//         //       child: Icon(CupertinoIcons.search),
//         //     ),
//         //   ],
//         // ),
//         body: SizedBox(
//           width: size.width,
//           height: size.height,
//           child: Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(top: 15),
//                 width: size.width,
//                 height: size.height * 0.05,
//                 child: Stack(
//                   children: [
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
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding: EdgeInsets.only(
//                                     left: index == 0 ? 10 : 23, top: 7),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       current = index;
//                                     });
//                                   },
//                                   child: Text(
//                                     tabs[index],
//                                     style: GoogleFonts.ubuntu(
//                                       fontSize: current == index ? 16 : 14,
//                                       fontWeight: current == index
//                                           ? FontWeight.w400
//                                           : FontWeight.w300,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }),
//                       ),
//                     ),
//                     AnimatedPositioned(
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       bottom: 0,
//                       left: changePositionedOfLine(),
//                       duration: const Duration(milliseconds: 500),
//                       child: AnimatedContainer(
//                         margin: const EdgeInsets.only(left: 10),
//                         width: changeContainerWidth(),
//                         height: size.height * 0.008,
//                         decoration: BoxDecoration(
//                           color: Colors.deepPurpleAccent,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         duration: const Duration(milliseconds: 1000),
//                         curve: Curves.fastLinearToSlowEaseIn,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: size.height * 0.3),
//                 child: Text(
//                   "${tabs[current]} Tab Content",
//                   style: GoogleFonts.ubuntu(fontSize: 30),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {

// bool selected =   false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // length: 4,
//         body: SizedBox(
//           height: 200.h,
//           width: 350.w,
//           child: Stack(
//             children: [
//               AnimatedPositioned(
//                 width: selected ? 200.w : 50.w,
//                 height: selected ? 50.w : 200.w,
//                 top: selected ? 50.w : 150.w,
//                 duration: Duration(
//                   seconds: 2
//                 ),
//                 curve: Curves.fastOutSlowIn,
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selected = !selected;
//                     });
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.orangeAccent,
//                       borderRadius: BorderRadius.circular(17.r)

//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }
