import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/business_categories_tile.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import '../Function/navigate.dart';
import '../resources/color.dart';
import '../resources/components/headerwidget.dart';

class BusinessCategoryScreen extends StatelessWidget {
  const BusinessCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
        TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColor.lightGrey,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 55.h),
              child: Column(
                children: [
                  HeaderWidget(
                    bottomMargin: 0,
                    title: "",
                    notification: true,
                  ),
                  Content(
                    data: "Business Category",
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                 Container(
                                      // color: AppColor.searchBarColor,
                                      height: 50.h,
                                      width: 311.w,
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGrey,
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
                                                          // color: AppColor.white,
                                                        ),
                                                        suffixIcon: Icon(Icons.search, color: Colors.black,),
                                                        // suffixIcon: Image.asset(search1, height: 24,),
                                                        border: OutlineInputBorder(
                                                         borderRadius:
                                                        BorderRadius.all(Radius.circular(15.r)),
                                                                  ),
                                                                ),
                                                              ),
                                    ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Content(data: "All Categories", size: 20.h, weight: FontWeight.bold,),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          height: 500.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: GestureDetector(
                                  onTap: () {
                                    // navigate(context, ProfileTile());
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(bottom: 100.h,),
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: (){
                                            // navigate(context, NotificationScreen());
                                          },
                                          child: BusinessCatagoriesTile(name: "Automative", iconn: forwordarrow));
                                      },
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          height: 35,
                                          color: AppColor.lightGrey,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
