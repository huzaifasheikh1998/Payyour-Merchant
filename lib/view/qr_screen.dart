import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigatePop.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/view/pretty_qr.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          navigatePop(context);
        },
        child: Scaffold(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.amber,
        body: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Center(
              child: Container(
                width: 350.w,
                // margin: EdgeInsets.symmetric(horizontal: 10,),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Content(data: "My Qr", size: 35.h, color: Colors.black, weight: FontWeight.w900,),
                    SizedBox(
                      height: 13.h,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(child: PrettyQr(data: "Payment Send Succesfully", size: 250.h,elementColor: Colors.black,)),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
          ),
      ),
    );
  }
}








            
            