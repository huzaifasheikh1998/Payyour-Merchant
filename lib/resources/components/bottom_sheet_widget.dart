
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/button1.dart';
import 'package:pay_your/resources/components/button2.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/business_detail_screen.dart';

import '../../view/balance_details_screen.dart';
import '../../view/navbar_screen.dart';
import 'content_field.dart';
import 'content_field_password.dart';

void bottomSheetWidget(BuildContext context) {
  TextEditingController phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final PageController controller = PageController(initialPage: 0);


                showModalBottomSheet(
                backgroundColor: Colors.white,
                isScrollControlled: true,
                context: context,
                // backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(25),
                    topStart: Radius.circular(25),
                  ),
                ),
                builder: (context) => Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 20,  
                    end: 20,
                    bottom: 30,
                    top: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        // color: Colors.white,
                        height: 600,
                        child: PageView(
                          controller: controller,
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Column( 
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Content(data: "Confirm Details", size: 30.h),
                                      Image.asset(cut),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                               Container(
                                
                                height: 70.h,
                                width: 311.w,
                                decoration: BoxDecoration(
                                  color: AppColor.lightGrey,
                                  borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.h, top: 15.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Content(data: "Bank", size: 13.h, weight: FontWeight.bold, color: AppColor.greyTextColor,),
                                      Content(data: "Meezan", size: 15.h,weight: FontWeight.bold, ),
                                    
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                               ),
                      SizedBox(height: 8.h,),
                      Container(
                                
                                height: 70.h,
                                width: 311.w,
                                decoration: BoxDecoration(
                                  color: AppColor.lightGrey,
                                  borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.h, top: 15.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Content(data: "Account Name", size: 13.h, weight: FontWeight.bold, color: AppColor.greyTextColor,),
                                      Content(data: "Hammad", size: 15.h,weight: FontWeight.bold, ),
                                    
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                               ),
                               SizedBox(height: 8.h,),
                      Container(
                                
                                height: 70.h,
                                width: 311.w,
                                decoration: BoxDecoration(
                                  color: AppColor.lightGrey,
                                  borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.h, top: 15.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Content(data: "Account Number", size: 13.h, weight: FontWeight.bold, color: AppColor.greyTextColor,),
                                      Content(data: "10380107196231", size: 15.h,weight: FontWeight.bold, ),
                                    
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                               ),
                               
                               SizedBox(height: 18.h,),
                      Button1(
                        text: "Yes, link this Account",
                        color: AppColor.darkPurple,
                        imageOne: settings,
                        onPress: () {
                                   navigate(
                                          context, BusinessDetailScreen());
                                          // navigate(context, NavBarScreen());

                        },
                      ),
                      SizedBox(height: 8.h,),
          //             Container(
          // width: 320.w,
          // height: 50.h,
          //                             // margin: EdgeInsets.symmetric(horizontal: 25.w),
          //                                   // padding: EdgeInsets.symmetric(
          //                                   //      horizontal: 60.w),
          //                                   decoration: BoxDecoration(
          //                                       // color: AppColor.white,
          //                                       borderRadius:
          //                                           BorderRadius.circular(15.r),
          //                                       border: Border.all(
          //                                           color: AppColor.darkBrownHeading,
          //                                           width: 2.0,
          //                                           style: BorderStyle.solid,
          //                                           strokeAlign: BorderSide
          //                                               .strokeAlignCenter)
          //                                                ),
          //                             child: Row(
          //                               mainAxisAlignment: MainAxisAlignment.center,
          //                               children: [
          //                                 Image.asset(settings, height: 24.h, width: 24.w,),
          //                                 Content(
          //                                   data: "Change Bank Account",
          //                                   size: 15.h,
          //                                   color: AppColor.darkBrownHeading,
          //                                   weight: FontWeight.w600,
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          GestureDetector(
                                    onTap: () {
                                      // navigate(
                                          // context, CreateAnAccountScreen());
                                    },
                                    child: Container(
          width: 320.w,
          height: 50.h,
                                      // margin: EdgeInsets.symmetric(
                                      //     horizontal: 25.w),
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 60.w),
                                      decoration: BoxDecoration(
                                          // color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          border: Border.all(
                                              color: AppColor.darkBrownHeading,
                                              width: 2.0,
                                              style: BorderStyle.solid,
                                              strokeAlign: BorderSide
                                                  .strokeAlignCenter)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            profile,
                                            height: 24.h,
                                            width: 24.w,
                                          ),
                                          Content(
                                            data: "Change Bank Account",
                                            size: 15.h,
                                            color: AppColor.darkBrownHeading,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                       ],
                                  ),
                                ]
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );

}