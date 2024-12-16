import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/image.dart';

import '../color.dart';
import 'content.dart';

class ProfileTile extends StatelessWidget {
  String text;
  String imagee;

  ProfileTile({super.key, required this.imagee, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(image: AssetImage(imagee), fit: BoxFit.cover)),
      height: 140.h,
      width: 343.w,
      child: Container(
        margin: EdgeInsets.only(top: 29.h, left: 30.w, right: 40.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Content(data: "PayYour Balance", size: 14,color: AppColor.white),
            Stack(
              children:[ Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Content(
                    data: text,
                    size: 30,
                    weight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                  Image.asset(
                    tilearrow,
                    height: 24.h,
                    width: 24.w,
                    color: AppColor.lightOrange,
                  ),
                ],
              ),
                Container(
                margin: EdgeInsets.only(left: 124.w, bottom: 1.h, top: 20.h),
                child: Content(data: "25", size: 20, weight: FontWeight.bold, color: AppColor.white,)),
              ],
            ),
            // Container(
            //     margin: EdgeInsets.only(left: 155.w, bottom: 15.h),
            //     child: Content(data: "25", size: 20)),
          ],
        ),
      ),
    );
  }
}
