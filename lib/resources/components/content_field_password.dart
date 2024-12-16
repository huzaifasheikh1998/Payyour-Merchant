import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:provider/provider.dart';

import '../../ViewModel/password_visibility_view_model.dart';

class ContentFieldPassword extends StatelessWidget {
  String? label;
  String hint;
  int index;
  TextEditingController controller;
  List<TextInputFormatter> inputFormat;
  // TextInputType textInput;
  ContentFieldPassword({
    super.key,
    this.label,
    required this.hint,
    required this.index,
    required this.controller,
    required this.inputFormat,
    // required this.textInput
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:label == null ?CrossAxisAlignment.center:CrossAxisAlignment.start,
      children: [
        // label == null
        //     ? Container()
        //     : Container(
        //         // margin: EdgeInsets.only(top: 20.h, bottom: 9.h),
        //         child: Text(
        //           label!,
        //           style: TextStyle(fontSize: 19.sp, color: AppColor.greyTextColor),
        //         )),
        Container(
         height: 50.h,
          width: 311.h,
          child: Builder(builder: (context) {
            return Consumer<PasswordVisibilityViewModel>(
                builder: (context, value, child) {
              return TextFormField(
                controller: controller,
                maxLength: 30,
                keyboardType: TextInputType.text,
                obscureText: value.getObscure(false, index),
                style: TextStyle(
                    fontSize: 15.h, color: Color.fromARGB(186, 0, 0, 0)),
                inputFormatters: inputFormat,
                decoration: InputDecoration(
                  // fillColor: AppColor.textFieldColor,
                  fillColor:  AppColor.white,
                  filled: true,
                  hintText: hint,
                  hintStyle:
                      TextStyle(color:AppColor.textFieldHintColor, fontSize: 15.sp),
                  counterText: "",
                  suffixIcon: Container(
                      margin: EdgeInsets.symmetric(vertical: 13.h),
                      child: GestureDetector(
                          onTap: () {
                            value.togglePasswordVisibility(index);
                          },
                          child: Image.asset(
                            value.getObscure(true, index),
                            height: 24.h,
                            width: 24.w,
                          ))),
                  contentPadding:
                      EdgeInsets.only(top: 15, bottom: 10, left: 21.w),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: AppColor.darkBrownHeading, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: AppColor.darkBrownHeading, width: 1.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                        color: AppColor.darkBrownHeading, width: 1.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                        color: AppColor.darkBrownHeading, width: 1.0),
                  ),
                ),
                validator: (value) {
                },
              );
            });
          }),
        )
      ],
    );
  }
}
