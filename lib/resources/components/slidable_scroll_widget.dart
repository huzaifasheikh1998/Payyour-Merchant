import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/components/custom_tab_widget.dart';
import 'package:pay_your/resources/components/settlement_history_tile.dart';
import 'package:pay_your/resources/image.dart';

class SlidableScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        maxChildSize: 0.822,
        builder: (BuildContext context, scrollController) {
          return ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            child: Container(
              child: ListView(
                controller: scrollController,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                              height: 12.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: AppColor.greyTextColor,
                                borderRadius: BorderRadius.circular(30.r),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Content(
                              data: "Transactions",
                              size: 20.sp,
                              weight: FontWeight.bold,
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Image.asset(
                                  calender,
                                  height: 24.h,
                                  width: 24.w,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // CustomTab(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Content(
                              data: "All",
                              size: 20.sp,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-"),
                        SizedBox(
                          height: 10,
                        ),
                        RecentActivityTile(
                            image: bank,
                            name: "Robert J. Gray",
                            date: "23/11 | 1:30pm",
                            rupees: "Rs. 4,526/-")
                      ]),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
