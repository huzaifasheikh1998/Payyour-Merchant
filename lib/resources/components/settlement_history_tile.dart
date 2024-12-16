import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/Settlement_screen.dart';

// class RecentActivityTile extends StatelessWidget {
//   const RecentActivityTile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         // padding: EdgeInsets.all(8),

//         height: 80.h,
//         width: 340.w,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: ListTile(
//           contentPadding: EdgeInsets.only(bottom: 10),
//           onTap: () {},
//           // contentPadding:
//           // EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
//           isThreeLine: false,
//           // visualDensity: VisualDensity(vertical: 3),
//           leading: Container(
//             height: 23.62.h,
//             width: 23.62.w,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Image.asset(
//               downarrow,
//               width: 10.w,
//             ),
//           ),
//           title: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Daniyal Khan",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     // padding:
//                     // EdgeInsets.symmetric(horizontal: 14, vertical: 3),
//                     child: Text(
//                       "Rs\n00",
//                       style: TextStyle(
//                         fontSize: 15.sp,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 3.h),
//                 child: Text(
//                   "03/02",
//                   style: TextStyle(
//                     color: AppColor.darkPurple,
//                     fontSize: 14.sp,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RecentActivityTile extends StatelessWidget {
//   final String image,name,Date,rupees;
//   const RecentActivityTile({super.key, required this.image,required this.name, required this.Date, required this.rupees});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//             height: 80.h,
//             width: 343.w,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ListTile(
//                 contentPadding: EdgeInsets.only(),
//                 onTap: () {},
//                 isThreeLine: false,
//                 leading: Container(
//                   height: 30.h,
//                   width: 23.62.w,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Image.asset(
//                     image,
//                     width: 10.w,
//                   ),
//                 ),
//                 title: Container(
//                   // Add a container to separate the content from the padding
//                   padding: EdgeInsets.only(
//                       left: 20.0), // Adjust the padding as needed
//                   child: Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Content(
//                             data: name,
//                             size: 20,
//                             weight: FontWeight.bold,
//                           ),
//                           Content(data: Date, size: 10),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 83, bottom: 2),
//                         child: Content(
//                           data: rupees,
//                           size: 20,
//                           weight: FontWeight.bold,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )));
//   }
// }

// class RecentActivityTile extends StatelessWidget {
//   final String image, name, Date, rupees;
//   const RecentActivityTile(
//       {super.key,
//       required this.image,
//       required this.name,
//       required this.Date,
//       required this.rupees});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       height: 80.h,
//       width: 343.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(9),
//         child: Row(children: [
//           Image.asset(
//             image,
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Content(
//                   data: name,
//                   size: 20,
//                   weight: FontWeight.bold,
//                 ),
//                 Content(data: Date, size: 10)
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 22.5, vertical: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Content(
//                   data: "Rs",
//                   size: 15,
//                   weight: FontWeight.bold,
//                 ),
//                 Content(
//                   data: rupees,
//                   size: 15,
//                   weight: FontWeight.bold,
//                 )
//               ],
//             ),
//           ),
//         ]),
//       ),
//     ));
//   }
// }

// class RecentActivityTile extends StatelessWidget {
//   final String image, name, date, rupees;
//   const RecentActivityTile(
//       {super.key,
//       required this.image,
//       required this.name,
//       required this.date,
//       required this.rupees});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//             height: 60.h,
//             width: 343.w,
//             decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                       child: Image.asset(image,
//                       height: 23.62.h,
//                       width: 23.62.w,),
//                       ),
//                       Container(
//               height: 40.h,
//               width: 160.w,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Content(data: name, size: 17, weight: FontWeight.bold,),
//                   Content(data: date, size: 10,color: AppColor.greyTextColor, weight: FontWeight.bold,)
//               ],),
//                       ),
//                       Container(
//               height: 43.h, width:90.w ,
//                       child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Content(data: "Rs", size: 15 ,),
//                 Content(data: "$rupees/-", size: 15, color: Colors.black,)
//                       ],),
//                       )
//               ]),
//             ),
//           ));
//   }
// }

class RecentActivityTile extends StatelessWidget {
  final String image, name, date, rupees;
  const RecentActivityTile(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      required this.rupees});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 48.h,
      width: 333.w,
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
                //  color: Colors.white.withOpacity(0.5),
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.r)),
            child: Center(
              child: Image.asset(
                image,
                height: 24.h,
                width: 24.w,
                color: AppColor.lightOrange,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Content(
                  data: name,
                  size: 12.5.h,
                ),
                Content(
                  data: rupees,
                  size: 20.h,
                  weight: FontWeight.bold,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Content(
                  data: date,
                  size: 12.sp,
                  color: AppColor.greyTextColor,
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
