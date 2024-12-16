import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/image.dart';

class Button1 extends StatelessWidget {
   Button1({super.key, this.loading = false, required this.onPress, required this.text, this.color, required this.imageOne});
  final bool loading;
  final VoidCallback onPress;
  final String text;
  Color? color;
 final String imageOne ;
//    String imageTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 320.w,
          height: 50.h,
          // padding: EdgeInsets.symmetric(vertical: 8.h),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: color,
                  // shadowColor: Colors.transparent,
                  // onPrimary: itemGradient1Light,
                  // animationDuration: defaultAnimationDelay,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r))),
              onPressed: loading ? () {} : onPress,
              //  () {
              //    navigate(context, NavBarScreen());
              // },
              child: loading
                  ? Container(
                      // margin: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                          height: 30.h,
                          width: 30.h,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          )))
                  : 
                  Container(
                    // margin: EdgeInsets.only(left: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5.h),
                          child: Image.asset(imageOne, color: Colors.white,)),
                        Text(text,
                            style: TextStyle(
                                // fontFamily: "Rhizome",
                                fontSize: 15.h,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                                // Image.asset(imageTwo),
                      ],
                    ),
                  )),
        ),
      ],
    );
  }
}
