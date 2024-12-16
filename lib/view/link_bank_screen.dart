import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/button1.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/All_bank_screen.dart';

import '../Function/navigate.dart';
import '../resources/components/content.dart';
import '../resources/components/content_field.dart';
import '../resources/components/headerwidget.dart';

class LinkbankScreen extends StatelessWidget {
  const LinkbankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 55.h),
                    child: HeaderWidget(
                      bottomMargin: 8,
                      title: "",
                      notification: true,
                    )),
                Container(
                  // margin: EdgeInsets.only(
                  //   top: 101.h, bottom: 89.h
                  // ),
                  child: Image.asset(
                    raast,
                    width: 143.w,
                    height: 143.h,
                  ),
                ),
                SizedBox(
                  height: 88.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 45.h, top: 15.h),
                              child: Content(
                                data: "Link With Raast Id",
                                size: 30.h,
                                weight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 12.h,
                          ),
                        ],
                      ),
                      ContentField(
                        image: Image.asset(
                          raast,
                          height: 41.h,
                          width: 41.w,
                          // alignment: Alignment.centerRight,
                          
                        ),
                        hint: "03101131166",
                        controller: _phoneController,
                        color: AppColor.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Button1(
                        text: "Link",
                        color: AppColor.darkBrownHeading,
                        imageOne: profile,
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 50,
                              endIndent: 5,
                              color: Colors.black26,
                              // thickness: 1,
                              // indent: 12,
                            ),
                          ),
                          Text(
                            "or",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Divider(
                              indent: 5,
                              endIndent: 50,
                              color: Colors.black26,
                              // endIndent: 12.h,
                              // thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          navigate(context, AllBankScreen());
                        },
                        child: Container(
                          height: 50.h,
                          margin: EdgeInsets.symmetric(
                              horizontal: 25.w),
                          padding: EdgeInsets.symmetric(
                              horizontal: 85.w),
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius:
                                  BorderRadius.circular(15.r),
                              border: Border.all(
                                  color: AppColor.darkBrownHeading,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                  strokeAlign: BorderSide
                                      .strokeAlignCenter)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [ 
                              Image.asset(
                                settings,
                                height: 24.h,
                                width: 24.w,
                              ),
                              Content(
                                data: "Select Bank",
                                size: 15.h,
                                color: AppColor.darkBrownHeading,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
