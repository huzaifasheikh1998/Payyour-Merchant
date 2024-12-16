import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/components/notification_tile.dart';
import 'package:pay_your/resources/components/switch_button_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final _controller04 = AdvancedSwitchController();
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Column(
              children: [
                Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 50.h
                          ),
                          child: HeaderWidget(
                            bottomMargin: 0,
                            title: "",
                            notification: false,
                            // colorr: AppColor.white,
                          )),
                           Container(
                        margin: EdgeInsets.only(left: 15.h, right: 15.h, ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Content(data: "Notifcation", size: 20.h, weight: FontWeight.bold,),
                            AdvancedSwitch(
                            activeChild: Text('Eng'),
                            inactiveChild: Text('Urdu'),
                            borderRadius: BorderRadius.circular(5.r),
                            width: 76,
                             controller: _controller04
                      
                          )
                          ],
                        ),
                      ),
              ],
            ),
                      SizedBox(height: 27.h,),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                        GestureDetector(
                          onTap: () {
                            // navigate(context, screen)
                          },
                          child: NotificationTile()),
                        NotificationTile(),
                        NotificationTile(),
                        NotificationTile(),
                        NotificationTile(),
                        NotificationTile(),
                        NotificationTile(),
                        NotificationTile(),
                         ],
                        ),
                      ),
                      
        ],
      ),
    );
  }
}