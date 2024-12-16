


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/components/home_tile.dart';
import 'package:pay_your/resources/components/profile_tile.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/Settlement_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isTicked = false;

  void toggleTick() {
    setState(() {
      isTicked = !isTicked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            color: Colors.white,
            child: SafeArea(
                child: Column(children: [
              // Container(
              //     margin: EdgeInsets.symmetric(horizontal: 10.w),
              //     child: headerTransparentWidget(
              //         context, 8, "Change Contact", false)),
              // Container(
              //     margin: EdgeInsets.symmetric(
              //       horizontal: 10,
              //     ),
              //     child: HeaderWidget(
              //       bottomMargin: 8,
              //       title: "",
              //       notification: true,
              //     )
              //     ),
              Icon(Icons.notification_add),
              Padding(
                padding: const EdgeInsets.all(21),
                child: Column(children: [
                  Row(children: [
                    Container(
                        width: 260.w,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 230.w,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Content(
                                        data: "Business",
                                        size: 20.h,
                                        color: Colors.black,
                                      ),
                                      Content(
                                        weight: FontWeight.bold,
                                        data:
                                            "Imtiaz Super Market and Shopping Mall",
                                        size: 20.h,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      height: 60.h,
                      width: 70.w,
                      color: Colors.white,
                      child: Center(
                        child: GestureDetector(
                          onTap: (){ navigate(
                          context, SettlementScreen());},
                          child: Image.asset(
                            notificationbell,
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                    )
                  ]),
                ]),
              ),
              Container(
                height: 50.h,
                 width: 343.w,
                 decoration: BoxDecoration(
                  color: AppColor.lightOrange,
                  borderRadius: BorderRadius.circular(20.r)
                 ),

                 child: Center(child: Image.asset(barcodeScanner,
                 height: 29.33.h,
                 width: 29.33.w,),
                 ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ProfileTile(imagee: blur, text: "100,000"),
              ),

              HomeTile(),



            ]))),


      ],
    ));
  }
}
