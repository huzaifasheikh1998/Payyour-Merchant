import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';

class SettingTile extends StatelessWidget {
  SettingTile({super.key, required this.image, required this.name});

  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
  height: 40.h,
  width: 345.w,
  decoration: BoxDecoration(color: Colors.white),
  child: Row(
    children: [
      Image.asset(
        image,
        height: 24.h,
        width: 24.w,
      ),
      SizedBox(width: 14.w), // Add padding between the image and content
      Content(
        data: name,
        size: 15,
        weight: FontWeight.bold,
      ),
      Expanded(
        child: Container(), // This expands and pushes the second image to the end
      ),
      Image.asset(
        forwardarrow,
        height: 16.39.h,
        width: 16.39.w,
      ),
    ],
  ),
);
  }
}
