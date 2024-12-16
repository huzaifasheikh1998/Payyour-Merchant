import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/image.dart';

class RoundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          width: 70.w, // Adjust the width and height as needed
          height: 70.h,
          color: Colors.grey, // Background color for the circular container
          child: Image.asset(
            person, // Replace with your image URL
            fit: BoxFit.cover, // Adjust how the image fits within the circular container
          ),
        ),
      ),
    );
  }
}