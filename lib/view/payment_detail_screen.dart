
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/small_button.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/navbar_screen.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkPurple,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
              Image.asset(
                slip,
                height: 476.h,
                width: 325.w,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15, ),
                    child: Column(
                      children: [
                        Content(data: "Transaction Successful", size: 20.h, weight: FontWeight.bold,),
                    Content(data: "TID : 42303162689077", size: 12.h, weight: FontWeight.w600,),
                    Content(data: "October 6, 2023 at 3:50Pm", size: 12.h, weight: FontWeight.w600,),
                     SizedBox(
                    height: 25.h,
                  ),
                    Content(data: "Rs. 1,500", size: 30.h, weight: FontWeight.w900,),
                     SizedBox(
                    height: 30.h,
                  ),
                    Container(
                    width: 291.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColor.lightGrey,
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 12.h, left: 14.w, right: 14.w),
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Content(data: "Sender", size: 13.h, weight: FontWeight.w600,),
                              Content(
                                  data: "Imtiaz Super Market", size: 13.h, weight: FontWeight.bold,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 6.h,
                  ),
                    Container(
                    width: 291.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColor.lightGrey,
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 12.h, left: 14.w, right: 14.w),
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Content(data: "Sender", size: 13.h, weight: FontWeight.w600,),
                              Content(
                                  data: "Imtiaz Super Market", size: 13.h, weight: FontWeight.bold,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // PrimaryButton(title: "OK",func:  (){
                  //   // navigate(context, NavBarScreen());

                  // }, ),
                  // Divider(1, 2)
                      ],
                    ),
                  ),
                  
                  
                 
                
                ],
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
