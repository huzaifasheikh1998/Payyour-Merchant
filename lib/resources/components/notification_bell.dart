import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/Settlement_screen.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      // margin: EdgeInsets.symmetric(horizontal: 18),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: AppColor.backgroundgrey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Center(
                            child: Image.asset(
                              notificationbell,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                          Container(
                            height: 14.h,
                            width: 24.w,
                            margin: EdgeInsets.only(left: 0, top: 4, right: 20),
                            decoration: BoxDecoration(
                              color: AppColor.lightOrange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Content(
                                data: "521",
                                size: 10,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
  }
}