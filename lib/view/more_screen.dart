import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/content.dart';

import '../resources/color.dart';
import '../resources/components/small_button.dart';
import '../resources/image.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
               decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  // borderRadius: BorderRadius.circular(20.r),
                ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                width: 343.w,
                height: 676.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w, left: 16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 16.h),
                            child: Text(
                              "Others",
                              style: TextStyle(
                                  fontSize: 20.h, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Send Money",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        
                            MoreTile(),
                            MoreTile(),
                            MoreTile(),
                          ],
                          ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MoreTile(),
                            MoreTile(),
                            MoreTile(),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        MoreTile(),
                        SizedBox(
                          height: 15.h,
                        ),
                        Content(data: "Top Up", size: 15, weight: FontWeight.bold,),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MoreTile(),
                            MoreTile(),
                            MoreTile(),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Content(data: "Bills", size: 15, weight: FontWeight.bold,),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MoreTile(),
                            MoreTile(),
                            MoreTile(),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MoreTile(),
                            MoreTile(),
                          ],
                        ),
                         SizedBox(
                          height: 15.h,
                        ),
                         Content(data: "Salary", size: 15, weight: FontWeight.bold,),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MoreTile(),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    
  }
}


class MoreTile extends StatelessWidget {
  const MoreTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(20.r)
                  
                      ),
                      // margin: EdgeInsets.only(left: 15.h),
                      child: Column(
                        children: [
                          SizedBox(height: 11.h,),
                          Image.asset(star, height: 30.h, color: AppColor.lightpurple),
                          SizedBox(height: 10.h,),
                          Content(data: "My", size: 12.h,weight: FontWeight.bold,),
                          Content(data: "Favorite", size: 12.h,weight: FontWeight.bold,),
                          SizedBox(height: 10.h,),
                        ],
                      ));
  }
}