import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigatePop.dart';
import 'package:pay_your/main.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/legend_widget.dart';
import 'package:pay_your/resources/components/stocks_page.dart';
import 'package:pay_your/resources/components/notification_bell.dart';
import 'package:pay_your/resources/components/settlement_history_tile.dart';
import 'package:pay_your/resources/components/slidable_scroll_widget.dart';
import 'package:pay_your/resources/image.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});
  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
              height: 500.h,
              decoration: BoxDecoration(color: AppColor.lightpurple),
              child: Column(children: [
                Container(
                    // margin: EdgeInsets.symmetric(
                    //   horizontal: 10,
                    //   vertical: 10
                    // ),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigatePop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 18),
                              height: 46.h,
                              width: 46.w,
                              decoration: BoxDecoration(
                                  color: AppColor.backgroundgrey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Center(
                                child: Image.asset(
                                  leftarrow,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ),
                            ),
                          ),
                          Content(
                            data: "Statistics",
                            size: 16.sp,
                            weight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 18),
                            height: 46.h,
                            width: 46.w,
                            decoration: BoxDecoration(
                                color: AppColor.backgroundgrey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(15.r)),
                            child: Center(
                              child: Image.asset(
                                threeline,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                        ])),
                SizedBox(
                  height: 25.h,
                ),
                Column(
                  children: [
                    Content(
                      data: "Rs. 11,000/-",
                      size: 35.h,
                      weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LegendWidget(
                              name: "Sent", color: AppColor.darkPurple),
                          SizedBox(
                            width: 20.w,
                          ),
                          LegendWidget(
                              name: "Recieved", color: AppColor.lightOrange),
                          SizedBox(
                            width: 20.w,
                          ),
                          LegendWidget(
                              name: "Settlement", color: AppColor.white)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    StocksPage(),
                  ],
                ),
              ])),
          SlidableScroll(),
        ],
      )),
    );
  }
}
