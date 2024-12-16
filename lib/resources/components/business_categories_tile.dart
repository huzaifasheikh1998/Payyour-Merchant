import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'content.dart';

class BusinessCatagoriesTile extends StatelessWidget {
String name;
final String iconn;

   BusinessCatagoriesTile({super.key, required this.name, required this.iconn});

  @override
  Widget build(BuildContext context) {
    return Container(
                                          margin: EdgeInsets.only( left: 12.h, right: 12.h, top: 15.h),
                                          child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  
                                            children: [
                                          Content(data: name, size: 15),
                                          Image.asset(iconn, height: 19.h, width: 19.w,)
                                           ],
                                          ),
                                        );
  }
}