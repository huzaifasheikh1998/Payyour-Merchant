import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/otp_screen.dart';

import '../resources/color.dart';
import '../resources/components/button1.dart';
import '../resources/components/button2.dart';
import '../resources/components/content_field.dart';
import '../resources/components/headerwidget.dart';
import '../resources/custom_package/custom_dropdown_internal.dart' as cdi;

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class CreateAnAccountScreen extends StatefulWidget {
  const CreateAnAccountScreen({super.key});

  @override
  State<CreateAnAccountScreen> createState() => _CreateAnAccountScreenState();
}

class _CreateAnAccountScreenState extends State<CreateAnAccountScreen> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController jobRoleSearchRequestDropdownCtrl =
      TextEditingController();
  String dropdownValue = list.first;
    bool open = false;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 55.h
                    ),
                    child: HeaderWidget(
                      bottomMargin: 0,
                      title: "",
                      notification: false,
                    )),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 05.h, bottom: 89.h
                  ),
                  child: Image.asset(
                    logo,
                    width: 178.w,
                    height: 141.h,
                  ),
                ),
                Container(

                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 30.h,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Content(data: "Mobile Number", size: 30.h, weight: FontWeight.bold,),
                                Content(data: "Primary Mobile Number for Business", size: 14.h, weight: FontWeight.bold,),
                              ],
                            )
                            ),
                            SizedBox(height: 12.h,)
                            ],
                      ),
                      ContentField(
                        hint: "Number",
                        controller: _phoneController,
                        color: Colors.white,
                        inputFormat: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.phone,
                      ),

                      // Container(
                      //   margin: EdgeInsets.only(right: 180.h, bottom: 12.h),
                      //   child: Content(data: "Service Provider", size: 15, weight: FontWeight.bold,)),
                      // SizedBox(height: 0,),
    //                   Visibility(
    //   child: GestureDetector(
    //     onTap: () async {
    //       setState(() {
    //         open = !open;
    //       });
    //       await Future.delayed(Duration(milliseconds: open ? 280 : 100), () {
    //         setState(() {
    //           visible = !visible;
    //         });
    //       });
    //     },
    //     child: AnimatedContainer(
    //       decoration: const BoxDecoration(),
    //       width: double.infinity,
    //       height: open ? 134 : 62,
    //       duration: const Duration(milliseconds: 700),
    //       curve: Curves.fastOutSlowIn,
    //       child: Card(
    //         shape: RoundedRectangleBorder(
    //           side: BorderSide(
    //               color: open ? AppColor.darkBrownHeading : Colors.transparent,
    //               width: open ? 2 : 0),
    //           borderRadius: BorderRadius.circular(12.0),
    //         ),
    //         elevation: 3,
    //         child: Container(
    //           decoration: BoxDecoration(
    //             color: AppColor.white,
    //             borderRadius: const BorderRadius.all(Radius.circular(12)),
    //             border: Border.all(
    //                 color: open ? AppColor.darkBrownHeading : AppColor.greenColor,
    //                 width: open ? 0 : 2),
    //           ),
    //           margin: EdgeInsets.all(open ? 0 : 2),
    //           child: Align(
    //               alignment: Alignment.topCenter,
    //               child: Column(
    //                 // mainAxisAlignment: MainAxisAlignment.start,
    //                 // crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Padding(
    //                     padding: EdgeInsets.only(top: 5),
    //                     child: SizedBox(
    //                         height: 34,
    //                         child:Content(data: "Select", size: 13, weight: FontWeight.bold,)),
    //                   ),
    //                   // Visibility(
    //                   //   visible: visible,
    //                   //   child: Padding(
    //                   //     padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
    //                   //     child: TextField(
    //                   //       keyboardType: TextInputType.phone,
    //                   //       decoration: InputDecoration(
    //                   //         isDense: true,
    //                   //         hintText: 'Phone Number',
    //                   //         hintStyle: TextStyle(
    //                   //             color: AppColor.lightOrange,
    //                   //             fontSize: 17,
    //                   //             fontFamily: 'Segoe-UI'),
    //                   //       ),
    //                   //     ),
    //                   //   ),
    //                   // ),
    //                 ],
    //               )),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),

                      SizedBox(
                        height: 8.h,
                      ),
                      Button2(
                        text: "OK",
                        imageOne: forwardarrow,
                        color: AppColor.darkPurple,
                        onPress: () {navigate(context, OTPScreen());},
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

// const _labelStyle = TextStyle(fontWeight: FontWeight.w600);
// Future<List<String>> getFakeRequestData(String query) async {
//   List<String> data = ['Developer', 'Designer', 'Consultant', 'Student'];

//   return await Future.delayed(const Duration(seconds: 1), () {
//     return data.where((e) {
//       return e.toLowerCase().contains(query.toLowerCase());
//     }).toList();
//   });
// }
