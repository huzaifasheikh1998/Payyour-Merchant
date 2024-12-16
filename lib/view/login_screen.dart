import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/balance_details_screen.dart';
import 'package:pay_your/view/create_an_account_screen.dart';
import 'package:pinput/pinput.dart';
import '../resources/components/button1.dart';
import '../resources/components/content_field.dart';
import '../resources/components/content_field_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 110.h, bottom: 89.h),
                  child: Image.asset(
                    logo,
                    width: 178.w,
                    height: 141.h,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 200.h, bottom: 10),
                              child: Content(
                                data: "Sign in",
                                size: 30.h,
                                weight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 12.h,
                          )
                        ],
                      ),
                      ContentField(
                        hint: "Number",
                        controller: _phoneController,
                        color: AppColor.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: ContentFieldPassword(
                            hint: "MPIN",
                            index: 1,
                            // color: AppColor.white,
                            // textInput: TextInputType.text,
                            controller: _passwordController,
                            inputFormat: <TextInputFormatter>[
                              FilteringTextInputFormatter.singleLineFormatter
                            ]),
                      ),
                      //       Pinput(
                      //   length: 6,
                      //   defaultPinTheme: PinTheme(
                      //     width: 48,
                      //     height: 48,
                      //     textStyle: TextStyle(
                      //         fontSize: 20,
                      //         color: Color.fromRGBO(30, 60, 87, 1),
                      //         fontWeight: FontWeight.w600),
                      //     decoration: BoxDecoration(
                      //       border: Border.all(color: AppColor.darkBrownHeading),
                      //       borderRadius: BorderRadius.circular(10.r),
                      //     ),
                      //   ),
                      //   // mainAxisAlignment: MainAxisAlignment.center,
                      //   // crossAxisAlignment: CrossAxisAlignment.center,
                      // ),

                      SizedBox(
                        height: 18.h,
                      ),
                      Button1(
                        text: "Login",
                        color: AppColor.darkPurple,
                        imageOne: profile,
                        onPress: () {
                          navigate(context, BalanceDetailsScreen());
                          // navigate(context, NavBarScreen());
                        },
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: Column(
                                children: [
                                  Text(
                                    "Forgot Password ",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          // height: 1,
                                          // endIndent: 12,
                                          indent: 50,
                                          endIndent: 5,
                                          color: Colors.black26,
                                          // thickness: 1,
                                          // indent: 12,
                                        ),
                                      ),
                                      Text(
                                        "or",
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          indent: 5,
                                          endIndent: 50,
                                          color: Colors.black26,
                                          // endIndent: 12.h,
                                          // thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      navigate(
                                          context, CreateAnAccountScreen());
                                    },
                                    child: Container(
                                      width: 320.w,
                                      height: 50.h,
                                      // margin: EdgeInsets.symmetric(
                                      //     horizontal: 25.w),
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 60.w),
                                      decoration: BoxDecoration(
                                          // color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          border: Border.all(
                                              color: AppColor.darkBrownHeading,
                                              width: 2.0,
                                              style: BorderStyle.solid,
                                              strokeAlign: BorderSide
                                                  .strokeAlignCenter)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            profile,
                                            height: 24.h,
                                            width: 24.w,
                                          ),
                                          Content(
                                            data: "Create an account",
                                            size: 15.h,
                                            color: AppColor.darkBrownHeading,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
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
