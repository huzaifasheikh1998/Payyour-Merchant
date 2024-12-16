import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/bank_detail_screen.dart';
import '../resources/components/headerwidget.dart';

class AllBankScreen extends StatefulWidget {
  const AllBankScreen({super.key});

  @override
  State<AllBankScreen> createState() => _AllBankScreenState();
}

class _AllBankScreenState extends State<AllBankScreen> {
  TextEditingController _phoneController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 274.h,
              decoration: BoxDecoration(
                  color: AppColor.darkPurple,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.r),
                      bottomLeft: Radius.circular(25.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h ),
                      child: HeaderWidget(
                        bottomMargin: 8,
                        title: "",
                        notification: true,
                        colorr: AppColor.white,
                      )),
                  // Icon(Icons.notification_add),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Content(
                          data: "Bank",
                          size: 30.h,
                          color: AppColor.white,
                          weight: FontWeight.bold,
                        ),
                        Content(
                          data:
                              "Where Money Collected PAyyour Should\nbe sattled",
                          size: 14,
                          color: AppColor.greyTextColor,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          // color: AppColor.searchBarColor,
                          height: 50.h,
                          width: 311.w,
                          decoration: BoxDecoration(
                            color: AppColor.searchBarColor,
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(
                                        color: Colors.transparent,
                                        // width: 2.0,
                                        style: BorderStyle.solid,
                  )
                          ),
                          child: TextField(
                            
                                            decoration: InputDecoration(
                                            hintText: "Bank",
                                            hintStyle: TextStyle(
                                              color: AppColor.white,
                                            ),
                                            suffixIcon: Icon(Icons.search, color: AppColor.white,),
                                            // suffixIcon: Image.asset(search1, height: 24,),
                                            border: OutlineInputBorder(
                                             borderRadius:
                                            BorderRadius.all(Radius.circular(15.r)),
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
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                navigate(context, BankDetailScreen());
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        meezan,
                        height: 40.h,
                      ),
                      Content(
                        data: "Meezan",
                        size: 15.h,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
