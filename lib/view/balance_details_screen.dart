
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/bar_chart_widget.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/dropdown_widget.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/components/legend_widget.dart';
import 'package:pay_your/resources/components/stocks_page.dart';
import 'package:pay_your/resources/components/profile_tile.dart';
import 'package:pay_your/resources/components/settings_tile_widget.dart';
import 'package:pay_your/resources/components/settlement_history_tile.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/Settlement_screen.dart';
import 'package:pay_your/view/notificatiion_screen.dart';
import 'package:pay_your/view/payment_detail_screen.dart';
import 'package:pay_your/view/statistics_screen.dart';
import 'package:pay_your/view/transactions_screen.dart';

import '../Function/navigate.dart';
import '../resources/components/flip_card_widget.dart';
import '../resources/components/notification_bell.dart';
import 'more_screen.dart';

class BalanceDetailsScreen extends StatefulWidget {
  const BalanceDetailsScreen({super.key});

  @override
  State<BalanceDetailsScreen> createState() => _BalanceDetailsScreenState();
}

class _BalanceDetailsScreenState extends State<BalanceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 12.h ),
            child: Row(
              children: [
                Image.asset(
                  logo,
                  height: 50.53.h,
                  width: 49.66.w,
                ),
                Content(
                  data: "PAY",
                  size: 18.h,
                ),
                Content(
                  data: "YOUR",
                  size: 18.h,
                  weight: FontWeight.w900,
                ),
                GestureDetector(
                    onTap: () {
                      navigate(context, NotificationScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 170.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          NotificationBell(),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Image.asset(logo),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Content(
                    data: "Business",
                    size: 18.h,
                  ),
                  Content(
                    data: "Imtiaz Super Market",
                    size: 18.h,
                    weight: FontWeight.bold,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Content(
                data: "Current Balance",
                size: 15.h,
                weight: FontWeight.bold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Content(
                    data: "Rs. 11,000/-",
                    size: 35.h,
                    weight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate(context, TransactionScreen());
                    },
                    child: Container(
                      height: 46.h,
                      decoration: BoxDecoration(
                      // color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(16.r)
                  
                      ),
                      margin: EdgeInsets.only(left: 15.h),
                      child: Image.asset(forwardarrow, height: 10.h, color: Colors.black,)),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 35.h,),
          FlipCardWidget(),
          SizedBox(height: 15.h,),
          Container(
            margin: EdgeInsets.only(left: 23, right: 16),
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: () {
                  navigate(context, PaymentDetailScreen());
                },
                child: Content(data: "Activity", size: 20.h, weight: FontWeight.w900,)),
              GestureDetector(
                onTap: () {
                  // navigate(context, NotificationScreen());
                },
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Center(
                    child: Image.asset(
                      uparrow,
                      height: 24.h,
                      width: 24.w,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: 375.w,
                child: Column(
                  children: [
                    RecentActivityTile(
                        image: bank,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: uparrow,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: uparrow,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: bank,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: uparrow,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: bank,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-"),
                    SizedBox(
                      height: 10,
                    ),
                    RecentActivityTile(
                        image: bank,
                        name: "Robert J. Gray",
                        date: "23/11 | 1:30pm",
                        rupees: "Rs. 4,526/-")
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
