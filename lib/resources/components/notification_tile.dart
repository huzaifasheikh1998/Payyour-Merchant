import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color.dart';
import 'content.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                         margin: EdgeInsets.only(left: 15.h, right: 15.h, ),
                          decoration: BoxDecoration(color: AppColor.lightGrey, borderRadius: BorderRadius.circular(2.r)),
                        child: ListTile(
                                    leading: Container( 
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                color: AppColor.lightpurple,
                                shape: BoxShape.circle,
                                
                                
                              ),
                            ),
                                    title: Content(data: "Tony Cook", size: 20.h),
                                    subtitle: Content(data: "Sent you a message", size: 14.h),
                                    trailing: Content(data: "1h13m", size: 14.h),
                                  ),
                      );
  }
}