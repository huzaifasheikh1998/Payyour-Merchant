import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({required this.title, this.loading = false, this.func});
  final String title;
  VoidCallback? func;
  bool loading;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColor.darkPurple,
        ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r))),
          onPressed: func,
          child: Container(
            width: 75.w,
            height: 44.h,
            // padding: EdgeInsets.symmetric(
            //     // horizontal: 20.w,
            //     vertical: 17.h),
            child: loading
                ? Container(
                    // margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30.h,
                          width: 30.h,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          )),
                    ],
                  ))
                : Center(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
          )),
    );
  }
}