import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/button2.dart';
import 'package:pinput/pinput.dart';
import '../Function/navigate.dart';
import '../resources/color.dart';
import '../resources/components/button1.dart';
import '../resources/components/content.dart';
import '../resources/components/headerwidget.dart';
import '../resources/image.dart';
import 'link_bank_screen.dart';

class MpinScreen extends StatelessWidget {
  const MpinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 55.h),
                child: HeaderWidget(
                  bottomMargin: 0,
                  title: "",
                  notification: false,
                )),
            Container(
              child: Image.asset(
                logo,
                width: 178.w,
                height: 141.h,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 180.h, top: 90.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Content(
                    data: "Set Pin",
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                  Content(
                    data: "Create Pin For PAyYour",
                    size: 14,
                    color: AppColor.greyTextColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
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
              // Container(
              //     margin: EdgeInsets.only(left: 32),
              //     child: Text(
              //       "Re-Enter Pin",
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     )),
              // PinCodeFields(
              //   length: 4,
              //   // fieldWidth: 40.h,
              //   // margin: EdgeInsets.only(left: 10),
              //   // padding: EdgeInsets.only(left: 12),
              //   fieldHeight: 5.w,
              //   animationDuration: const Duration(milliseconds: 200),
              //   animationCurve: Curves.easeInOut,
              //   switchInAnimationCurve: Curves.easeIn,
              //   switchOutAnimationCurve: Curves.easeOut,
              //   animation: Animations.slideInDown,
              //   onComplete: (result) {
              //     // Your logic with code
              //     print(result);
              //   },
              // ),
              SizedBox(
                height: 25.h,
              ),
            Button2(
                color: AppColor.darkPurple,
                imageOne: forwardarrow,
                onPress: () {
                  navigate(context, LinkbankScreen());
                },
                text: "Sumbit")
          ],
        ),
      ),
    );
  }
}
