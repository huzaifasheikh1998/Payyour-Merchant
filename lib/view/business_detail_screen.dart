import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/button2.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/welcome_payyour_Screen.dart';
import '../resources/components/button1.dart';
import '../resources/components/content.dart';
import '../resources/components/content_field.dart';
import '../resources/components/headerwidget.dart';

class BusinessDetailScreen extends StatelessWidget {
  const BusinessDetailScreen({super.key});

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
                  height: 150.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Column(
                                children: [
                                  Content(
                                    data: "Shop/Buisness Detail",
                                    size: 30.h,
                                    weight: FontWeight.bold,
                                  ),
                                ],
                              )
                              ),
                              SizedBox(height: 15.h,),

                        ],
                      ),
                      ContentField(
                        hint: "Shop/Business Name",
                        controller: _phoneController,
                        color: AppColor.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        // margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Business Category",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Shop Type",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Button2(
                        imageOne: forwardarrow,
                        text: "Continue",
                        color: AppColor.darkPurple,
                        onPress: () {
                          navigate(context, WelcomePayyourScreen());
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