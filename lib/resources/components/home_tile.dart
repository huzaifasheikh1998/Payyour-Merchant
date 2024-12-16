import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';

class HomeTile extends StatelessWidget {
  HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: 35.h, left: 30.w, right:40.w),
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColor.lightOrange),
        height: 110.h,
        width: 165.w,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Content(data: "Transaction", size: 13.h),
                  Image.asset(
                    uparrow,
                    height: 24.h,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35.h,
                    width: 74.w,
                    child: Content(data: "Syed Hammad Ali", size: 14.h, weight: FontWeight.bold,)),
                    Container(height: 33.h,
                    margin: EdgeInsets.only(top: 9),
                    width: 60.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Content(data: "Rs. ", size: 11.h , weight: FontWeight.bold,),
                        Content(data: "10,000000", size: 11.h, weight: FontWeight.bold,)
                      ],
                    ),
                    ),
                ],
              ),
              // Column()
              Content(data: "03/02", size: 
              10.h)
            ],
          ),
        ));
  }
}
