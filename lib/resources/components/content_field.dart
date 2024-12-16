import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';

class ContentField extends StatelessWidget {
  String? label;
  String hint;
  TextEditingController controller;
  List<TextInputFormatter> inputFormat;
  int? maxLength;
  TextInputType keyboardType;
  final String? Function(String?)? validate;
  Color? color;
  Image? image;
  ContentField(
      {super.key,
      this.label,
      this.color,
      this.maxLength,
      this.image,
      required this.hint,
      required this.controller,
      required this.inputFormat,
      required this.keyboardType,
      this.validate});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:label == null ?CrossAxisAlignment.center:CrossAxisAlignment.start,
      children: [
        // label == null
        //     ? Container()
        //     : Container(
        //         margin: EdgeInsets.only(top: 10.h, bottom: 10.h ),
        //         child: Text(
        //           label!,
        //           style: TextStyle(fontSize: 25.sp, color: color),
        //         )),
        Container(  
          height: 70.h,
          width: 311.h,
          child: TextFormField(
              // controller: controller,S
              maxLength: maxLength,
              keyboardType: keyboardType,
              style:
                  TextStyle(fontSize: 15, color: AppColor.darkBrownHeading),
              inputFormatters: inputFormat,
              decoration: new InputDecoration(
                fillColor:  AppColor.white,
                prefixIcon: image,
                filled: true,
                hintText: hint,
                hintStyle:
                    TextStyle(color: AppColor.greyTextColor, fontSize: 13.sp),
                counterText: "",
                contentPadding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 21.w),
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
                      color: Color.fromARGB(220, 247, 123, 114), width: 2.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                      color: Color.fromARGB(220, 247, 123, 114), width: 2.0),
                ),
                // errorStyle: InputDecoration.collapsed(hintText: hintText)
              ),
              validator: validate
              //  (value) {
              //   // if (Login_Api_Validation == false) {
              //   //   if (value == null || value.isEmpty)
              //   //     return "Enter Mobile Number";
              //   //   else if (value.length < 11) {
              //   //     return "Enter Correct Number";
              //   //   } else {
              //   //     return null;
              //   //   }
              //   // } else if (Login_Api_Validation == true) {
              //   //   if (Login_Api_Status == "404") {
              //   //     return "Failed";
              //   //   } else if (Login_Api_Status == "200") {
              //   //     return null;
              //   //   }
              //   // }
              // },
              ),
        )
      ],
    );
  }
}

// Widget textFieldWidget(controller,label,hint){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(
//                     margin: EdgeInsets.only(top: 20.h,bottom: 9.h),
//                     child: Text(label,style: TextStyle(fontSize: 19.sp,color: textFieldLabelColor),)),

//              Container(
//                 height: 50.h,
//                child: TextFormField(
//                         controller: controller,
//                         maxLength: 11,
//                         keyboardType: TextInputType.number,

//                         style: TextStyle(
//                             fontSize: 18, color: Color.fromARGB(186, 0, 0, 0)),
//                         inputFormatters: <TextInputFormatter>[
//                           FilteringTextInputFormatter.digitsOnly
//                         ],
//                         decoration: new InputDecoration(
//                           fillColor: textFieldColor,
//                           filled: true,
//                           hintText: hint,
//                           hintStyle: TextStyle(color: textFieldHintColor,fontSize: 17.sp),
//                           counterText: "",
//                           contentPadding:
//                               EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             borderSide: BorderSide(color: primaryColor, width: 2.0),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             borderSide:
//                                 BorderSide(color: textFieldColor, width: 2.0),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(220, 247, 123, 114),
//                                 width: 2.0),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(220, 247, 123, 114),
//                                 width: 2.0),
//                           ),
//                           // errorStyle: InputDecoration.collapsed(hintText: hintText)
//                         ),
//                         validator: (value) {
//                           // if (Login_Api_Validation == false) {
//                           //   if (value == null || value.isEmpty)
//                           //     return "Enter Mobile Number";
//                           //   else if (value.length < 11) {
//                           //     return "Enter Correct Number";
//                           //   } else {
//                           //     return null;
//                           //   }
//                           // } else if (Login_Api_Validation == true) {
//                           //   if (Login_Api_Status == "404") {
//                           //     return "Failed";
//                           //   } else if (Login_Api_Status == "200") {
//                           //     return null;
//                           //   }
//                           // }
//                         },
//                       ),
//              ) ],
//               );

// }
