import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/calendar_widget.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/content_field.dart';
import 'package:pay_your/resources/components/custom_tab_widget.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/components/settlement_history_tile.dart';
import 'package:pay_your/resources/image.dart';

class SettlementScreen extends StatefulWidget {
  const SettlementScreen({super.key});

  @override
  State<SettlementScreen> createState() => _SettlementScreenState();
}

class _SettlementScreenState extends State<SettlementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [AppColor.darkPurple,AppColor.lightpurple,Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
        ),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: HeaderWidget(
                          bottomMargin: 8,
                          title: "",
                          notification: false,
                        )),    
                Row(
                  children: [
                    Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Content(
                                weight: FontWeight.bold,
                                data: "Transactions",
                                size: 20.h,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Colors.white.withOpacity(0.5)),
                      child: InkWell(
                          onTap: () {
                            // Handle the tap here, e.g., show a date picker or navigate to a calendar screen.
                            print('Calendar icon tapped!');
                          },
                          child: Image.asset(
                            calender,
                            height: 24.h,
                            width: 24.w,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
      
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            
            // CustomTab(),
      
            Padding(
              padding: const EdgeInsets.all(16),
              child: Content(data: "All", size: 20.h, weight: FontWeight.bold,),
            ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                       SizedBox(height: 10,),
                      RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                      SizedBox(height: 10,),
                        RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                         SizedBox(height: 10,),
                         SizedBox(height: 10,),
                      RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                      SizedBox(height: 10,),
                        RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                         SizedBox(height: 10,),
                         SizedBox(height: 10,),
                      RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                      SizedBox(height: 10,),
                        RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                         SizedBox(height: 10,),
                         SizedBox(height: 10,),
                      RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                      SizedBox(height: 10,),
                        RecentActivityTile(image: bank, name: "Robert J. Gray", date: "23/11 | 1:30pm", rupees: "Rs. 4,526/-"),
                         SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
                 

      
              ],
        ),
      ),
    );
  }
}