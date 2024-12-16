import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/button2.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/headerwidget.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/business_detail_screen.dart';
import '../Function/navigate.dart';
import '../resources/components/bottom_sheet_widget.dart';
import '../resources/components/button1.dart';
import '../resources/components/content_field.dart';
import '../resources/components/content_field_password.dart';

class BankDetailScreen extends StatelessWidget {
  const BankDetailScreen({super.key});

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
                                                mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                            left: 35.w,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Content(
                                data: "Bank Detail",
                                size: 30.h,
                                weight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                   Content(
                            data: "Bank Name: ",
                            size: 15.h,
                            weight: FontWeight.bold,
                          ),
                             Content(
                            data: "Meezan Bank",
                            size: 15.h,
                            weight: FontWeight.bold,
                            color: AppColor.darkPurple,
                          ),

                                ],
                              )
                             
                            ],
                          )),
                          

                      SizedBox(
                        height: 12.h,
                      ),
                      ContentField(
                        hint: "Account Name",
                        controller: _phoneController,
                        color: AppColor.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 8,),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: ContentField(
                          hint: "Account Number",
                          controller: _passwordController,
                          color: AppColor.white,
                          inputFormat: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),

                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      Button2(
                        text: "Continue",
                        color: AppColor.darkPurple,
                        imageOne: forwardarrow,
                        onPress: () {
                          bottomSheetWidget(context);
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
