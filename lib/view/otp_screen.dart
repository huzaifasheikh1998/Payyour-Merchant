import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/link_bank_screen.dart';
import 'package:pinput/pinput.dart';
import '../Function/navigate.dart';
import '../resources/components/button1.dart';
import '../resources/components/headerwidget.dart';
import 'mpin_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 55.h
                    ),
                    child: HeaderWidget(
                      bottomMargin: 0,
                      title: "",
                      notification: false,
                    )),
          Column(
            children: [
              Container(
                child: Image.asset(
                  logo,
                  width: 178.w,
                  height: 141.h,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 55.h, top: 90.h),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Content(
                      data: "Verification Code",
                      size: 30,
                      weight: FontWeight.bold,
                    ),
                    Content(
                      data:
                          "We have send the code verification to\nYour Mobile Number",
                      size: 14,
                      color: AppColor.greyTextColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Text("1:59", style: TextStyle(fontWeight: FontWeight.bold),),

          Container(
            // color: Colors.amber,
            margin: EdgeInsets.only(top: 45),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 23),
                    child: Text(
                      "1:59",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 48,
                    height: 48,
                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.darkBrownHeading),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Button1(
                  imageOne: settings,
                    color: AppColor.darkPurple,
                    onPress: () {
                      navigate(context, MpinScreen());
                    },
                    text: "Sumbit")
              ],
            ),
          )
        ],
      ),
    );
  }
}
