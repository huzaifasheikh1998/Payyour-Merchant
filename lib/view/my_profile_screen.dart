import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/components/rounded_image.dart';
import 'package:pay_your/resources/components/settings_tile_widget.dart';
import 'package:pay_your/resources/image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    final _controller04 = AdvancedSwitchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              bottomMargin: 8,
              title: "",
              notification: false,
            ),
              Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        // margin:
                        //     EdgeInsets.only(top: 10,  left: 10),
                        margin: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Content(
                              weight: FontWeight.bold,
                              data: "My Account",
                              size: 20.h,
                              color: Colors.black,
                            ),
                       
                          ],
                        )),
                      //     AdvancedSwitch(
                      //   activeChild: Text('Eng'),
                      //   inactiveChild: Text('Urdu'),
                      //   borderRadius: BorderRadius.circular(5),
                      //   width: 76,
                      //    controller: _controller04
                      // )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                        color: AppColor.lightpurple,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 1),
                      child: Row(
                        children: [
                        RoundImage(),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // color: Colors.amber,
                                height: 40.h,
                                width: 120.w,
                                child: Content(
                                  data: "Abdul Rafay Siddqui",
                                  size: 15,
                                  weight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Content(
                                data: "03101131166",
                                size: 15,
                                weight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 47, bottom: 40),
                          child: Container(
                            height: 31.h,
                            width: 62.w,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                              onPressed: () {
                                // Add your edit button functionality here
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    edit,
                                    height: 17.88.h,
                                    width: 17.88.w,
                                  ),
                                  Content(
                                    data: "Edit",
                                    size: 10,
                                    weight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 24),
                    child: Expanded(
                      child: Container(
                        height: 430.h,
                        width: 343.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.r),
                                topRight: Radius.circular(15.r))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SettingTile(
                                    image: settings,
                                    name: "Account Settings"),
                                SizedBox(
                                  height: 10,
                                ),
                                SettingTile(
                                    image: settings,
                                    name: "Transaction History"),
                                SizedBox(
                                  height: 10,
                                ),
                                SettingTile(
                                    image: settings, name: "My Wallet"),
                                SizedBox(
                                  height: 10,
                                ),
                                SettingTile(
                                    image: settings, name: "My Approvals"),
                                SizedBox(
                                  height: 10,
                                ),
                                SettingTile(
                                    image: settings,
                                    name: "Tax Certificate"),
                                SizedBox(
                                  height: 20,
                                ),
                                Content(
                                  data: "HELP",
                                  size: 20,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SettingTile(
                                    image: settings,
                                    name: "Customer Support"),
                                SizedBox(
                                  height: 20,
                                ),
                                SettingTile(
                                    image: settings, name: "Fee Detail"),
                                SizedBox(
                                  height: 20,
                                ),
                                SettingTile(
                                    image: settings, name: "Help & FAQs")

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
