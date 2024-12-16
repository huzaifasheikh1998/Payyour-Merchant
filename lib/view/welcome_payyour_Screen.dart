import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/components/button2.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/balance_details_screen.dart';
import 'package:pay_your/view/business_category_screen.dart';
import 'package:pay_your/view/navbar_screen.dart';

import '../resources/color.dart';
import '../resources/components/button1.dart';
import '../resources/components/content.dart';
import '../resources/components/content_field.dart';
import '../resources/components/headerwidget.dart';

class WelcomePayyourScreen extends StatelessWidget {
  const WelcomePayyourScreen({super.key});

  @override
  Widget build(BuildContext context) {
        TextEditingController _phoneController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 55.h
                    ),
                    child: HeaderWidget(
                      bottomMargin: 8,
                      title: "",
                      notification: true,
                    )),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Content(
                                    data: "Welcome to PayYour",
                                    size: 30.h,
                                    weight: FontWeight.bold,
                                  ),
                                  Content(
                                    data: "Enter your shop / business address",
                                    size: 14.h,
                                    // weight: FontWeight.bold,
                                  ),
                                ],
                              )
                              ),
                            SizedBox(height: 15.h,),
                        ],
                      ),
                      ContentField(
                        hint: "State",
                        controller: _phoneController,
                        color: AppColor.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        child: ContentField(
                          hint: "City",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        // margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Shop / office / House / Flat No.",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        // margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Address Line 2",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                       Container(
                        // margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Area / Landmark (Optional)",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Button2(
                        imageOne: forwardarrow,
                        text: "Continue",
                        color: AppColor.darkPurple,
                        onPress: () {
                          navigate(context, NavBarScreen());
                        },
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}