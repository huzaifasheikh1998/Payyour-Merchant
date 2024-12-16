import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/button1.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/balance_details_screen.dart';

class AddAmountScreen extends StatelessWidget {
  const AddAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundpurple,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [  AppColor.backgroundgrey2,AppColor.backgroundgrey2,AppColor.darkPurple,AppColor.darkPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               HeaderWidget(
                        bottomMargin: 8,
                        title: "",
                        notification: false,
                      ),
        
                      Container(
                        margin: EdgeInsets.only(right: 200.w),
                        child: Content(data: "Add Amount", size: 20.h, weight: FontWeight.bold,)),
                        SizedBox(height: 30.h,),
                      Image.asset(logo, height: 100.h,),
                      SizedBox(height: 35.h,),
                      Container(
                        height: 325.h,
                        width: 343.w,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15.h),
                              height: 60.h,
                              width: 313.w,
                              decoration: BoxDecoration(
                                color: AppColor.backgroundgrey,
                          borderRadius: BorderRadius.circular(20.r),

                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16.w, top: 12.h),
                              child: Content(data: "Business", size: 13.h, color: Color(0xff5E5E5E).withOpacity(0.8), weight: FontWeight.bold,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16.w, bottom: 10.h),
                                  child: Content(data: "Daniyal Khan", size: 13.h, weight: FontWeight.bold,)),
                              ],
                            )
                          ],
                        ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15.h),
                              height: 60.h,
                              width: 313.w,
                              decoration: BoxDecoration(
                                color: AppColor.backgroundgrey,
                          borderRadius: BorderRadius.circular(20.r),

                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16.w, top: 12.h),
                              child: Content(data: "Till ID", size: 13.h, color: Color(0xff5E5E5E).withOpacity(0.8), weight: FontWeight.w900,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16.w, bottom: 10.h),
                                  child: Content(data: "115151151515115", size: 13.h, weight: FontWeight.bold,)),
                              ],
                            )
                          ],
                        ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15.h),
                              height: 60.h,
                              width: 313.w,
                              decoration: BoxDecoration(
                                color: AppColor.backgroundgrey,
                          borderRadius: BorderRadius.circular(20.r),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16.w, top: 10.h, bottom: 12.h),
                              child: Content(data: "Rs.", size: 30.h, color: Colors.black, weight: FontWeight.w900,)),
                              Container(
                              margin: EdgeInsets.only(left: 16.w, top: 10.h, bottom: 12.h, right: 15.w),
                              child: Content(data: "6,250", size: 30.h, color: Colors.black, weight: FontWeight.w900,)),
                            
                          ],
                        ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                      Button1(onPress: (){
                        navigate(context, BalanceDetailsScreen());
                      }, text: "Pay", color: Colors.orange, imageOne: settings, )

                          ],
                        ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}