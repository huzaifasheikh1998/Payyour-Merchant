import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/provider/navbar_provider.dart';
import 'package:pay_your/resources/color.dart'; 
import 'package:pay_your/resources/image.dart';
import 'package:provider/provider.dart';

Widget navBar(context) {
  // final homeProvider = Provider.of<HomeProvider>(context, listen: true);
  final navBarProvider = Provider.of<NavbarProvider>(context, listen: false);
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Center(
        child: FrostedGlassBox(
          // height: 70.h,
          theWidth: 360.w,
          theHeight: 90.h,
          theChild: Consumer<NavbarProvider>(builder: (context, value, child) {
            return Container(
              margin: EdgeInsets.only(top: 16.h, left: 25.w, right: 27.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                  
                    children: [
                      GestureDetector(
                        onTap: () {
                          value.changeScreen(0);
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                          color: value.screen == 0? AppColor.lightOrange : null,
                            borderRadius: BorderRadius.circular(15.r)
                          ),
                          child: Image.asset(
                            value.screen == 0 ? profile : profile,
                            // height: 21.h,
                            height: 21.h,
                            width: 21.w,
                            color: value.screen == 0 ? AppColor.white : AppColor.darkPurple,
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                          opacity: value.screen == 0 ? 1 : 0,
                          duration: Duration(milliseconds: 500),
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 14.h,
                                color: value.screen == 0
                                    ? AppColor.darkPurple
                                    : Colors.transparent,
                                fontWeight: FontWeight.w600),
                          )),
                      // SizedBox(
                      //   height: 5.h,
                      // )
                    ],
                  ),
                  Column(
                  
                    children: [
                      GestureDetector(
                        onTap: () {
                          value.changeScreen(1);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                            color: value.screen == 1? AppColor.lightOrange : Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15.r)
                            ),
                            child: Image.asset(
                              value.screen == 0 ? profile : profile,
                              // height: 21.h,
                              height: 18.h,
                              // width: 21.w,
                              color: value.screen == 0 ? AppColor.white : AppColor.darkPurple,
                            ),
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                          opacity: value.screen == 1 ? 1 : 0,
                          duration: Duration(milliseconds: 500),
                          child: Text(
                            "More",
                            style: TextStyle(
                                fontSize: 14.h,
                                color: value.screen == 1
                                    ? AppColor.lightOrange
                                    : Colors.transparent,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 5.h,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          value.changeScreen(2);
                        },
                        child: AnimatedContainer(
                          // margin: EdgeInsets.only(top: 6.h, bottom: 4.h),
                          duration: Duration(seconds: 2),
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                            color: value.screen == 2? AppColor.lightOrange : null,
                              borderRadius: BorderRadius.circular(15.r)
                            ),
                            child: Image.asset(
                              value.screen == 0 ? profile : profile,
                              // height: 21.h,
                              height: 18.h,
                              // width: 21.w,
                              color: value.screen == 0 ? AppColor.white : AppColor.darkPurple,
                            ),
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                          opacity: value.screen == 2 ? 1 : 0,
                          duration: Duration(milliseconds: 500),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: value.screen == 2
                                    ? AppColor.greyTextColor
                                    : Colors.transparent,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
    ],
  );
}




class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox(
      {Key? key,
      required this.theWidth,
      required this.theHeight,
      required this.theChild})
      : super(key: key);
  final theWidth;
  final theHeight;
  final theChild;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        //we use Stack(); because we want the effects be on top of each other,
        //  just like layer in photoshop.
        child: Stack(
          children: [
            //blur effect ==> the third layer of stack
            BackdropFilter(
              filter: ImageFilter.blur(
                //sigmaX is the Horizontal blur
                sigmaX: 15.0,
                //sigmaY is the Vertical blur
                sigmaY: 15.0,
              ),
              //we use this container to scale up the blur effect to fit its
              //  parent, without this container the blur effect doesn't appear.
              child: Container(),
            ),
            //gradient effect ==> the second layer of stack
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                 color: Color(0xffCFCFCF).withOpacity(0.2)
                // gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [
                //       //begin color
                //       Colors.white.withOpacity(0.20),
                //       //end color
                //       // Colors.white.withOpacity(0.05),
                //     ]),
              ),
            ),
            //child ==> the first/top layer of stack
            Center(child: theChild),
          ],
        ),
      ),
    );
  }
}
