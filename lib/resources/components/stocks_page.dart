import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color.dart';
import 'content.dart';

class StocksPage extends StatefulWidget {
  const StocksPage({ Key? key }) : super(key: key);
  @override
  _StocksPageState createState() => _StocksPageState();
}
class _StocksPageState extends State<StocksPage> {
  // List<FlSpot> _daylySpots = [
  //   FlSpot(0, 20.0),
  //   FlSpot(1, 20.0),
  //   FlSpot(2, 30.0),
  //   FlSpot(3, 10.0),
  //   FlSpot(4, 40.0),
  //   FlSpot(5, 60.0),
  //   FlSpot(6, 40.0),
  //   FlSpot(7, 80.0),
  //   FlSpot(8, 60.0),
  //   FlSpot(9, 70.0),
  //   FlSpot(10, 50.0),
  //   FlSpot(11, 150.0),
  //   FlSpot(12, 70.0),
  //   FlSpot(13, 80.0),
  //   FlSpot(14, 60.0),
  //   FlSpot(15, 70.0),
  //   FlSpot(16, 60.0),
  //   FlSpot(17, 80.0),
  //   FlSpot(18, 110.0),
  //   FlSpot(19, 130.0),
  //   FlSpot(20, 100.0),
  //   FlSpot(21, 130.0),
  //   FlSpot(22, 160.0),
  //   FlSpot(23, 190.0),
  //   FlSpot(24, 150.0),
  //   FlSpot(25, 170.0),
  //   FlSpot(26, 180.0),
  //   FlSpot(27, 140.0),
  //   FlSpot(28, 150.0),
  //   FlSpot(29, 150.0),
  //   FlSpot(30, 130.0)
  // ];
  // List<FlSpot> _monthlySpots = [
  //   FlSpot(0, 110.0),
  //   FlSpot(1, 110.0),
  //   FlSpot(2, 130.0),
  //   FlSpot(3, 100.0),
  //   FlSpot(4, 130.0),
  //   FlSpot(5, 160.0),
  //   FlSpot(6, 190.0),
  //   FlSpot(7, 150.0),
  //   FlSpot(8, 170.0),
  //   FlSpot(9, 180.0),
  //   FlSpot(10, 140.0),
  //   FlSpot(11, 150.0),
  // ];


List<FlSpot> _daylySpots = [
    FlSpot(0, 20.0),
    FlSpot(1, 30),
    FlSpot(2, 40),
    FlSpot(3, 50),
    FlSpot(4, 60.0),
    FlSpot(5, 70.0),
    FlSpot(6, 80.0),
    FlSpot(7, 100.0),
    FlSpot(8, 110.0),
    FlSpot(9, 120.0),
    FlSpot(10, 130.0),
    FlSpot(11, 100.0),
    FlSpot(12, 80.0),
    FlSpot(13, 90.0),
    FlSpot(14, 70.0),
    FlSpot(15, 60.0),
    FlSpot(16, 50.0),
    FlSpot(17, 40.0),
    FlSpot(18, 30.0),
    FlSpot(19, 20.0),
    FlSpot(20, 30.0),
    FlSpot(21, 40.0),
    FlSpot(22, 50.0),
    FlSpot(23, 60.0),
    FlSpot(24, 70.0),
    FlSpot(25, 80.0),
    FlSpot(26, 90.0),
    FlSpot(27, 100.0),
    FlSpot(28, 110.0),
    FlSpot(29, 120.0),
    FlSpot(30, 130.0)
  ];

  List<FlSpot> _daylySpots1 = [
    FlSpot(0, 130.0),
    FlSpot(1, 140),
    FlSpot(2, 150),
    FlSpot(3, 160),
    FlSpot(4, 170),
    FlSpot(5, 180),
    FlSpot(6, 190),
    FlSpot(7, 200),
    FlSpot(8, 190),
    FlSpot(9, 180),
    FlSpot(10, 170),
    FlSpot(11, 160.0),
    FlSpot(12, 150.0),
    FlSpot(13, 140.0),
    FlSpot(14, 130.0),
    FlSpot(15, 120.0),
    FlSpot(16, 130.0),
    FlSpot(17, 140.0),
    FlSpot(18, 150.0),
    FlSpot(19, 160.0),
    FlSpot(20, 170.0),
    FlSpot(21, 180.0),
    FlSpot(22, 190.0),
    FlSpot(23, 200.0),
    FlSpot(24, 190.0),
    FlSpot(25, 180.0),
    FlSpot(26, 170.0),
    FlSpot(27, 160.0),
    FlSpot(28, 150.0),
    FlSpot(29, 140.0),
    FlSpot(30, 130.0)
  ];

  List<FlSpot> _daylySpots2 = [
    FlSpot(0, 70.0),
    FlSpot(1, 80),
    FlSpot(2, 90),
    FlSpot(3, 100),
    FlSpot(4, 110),
    FlSpot(5, 120),
    FlSpot(6, 130),
    FlSpot(7, 140),
    FlSpot(8, 150),
    FlSpot(9, 160),
    FlSpot(10, 150),
    FlSpot(11, 140.0),
    FlSpot(12, 130.0),
    FlSpot(13, 120.0),
    FlSpot(14, 110.0),
    FlSpot(15, 100.0),
    FlSpot(16, 90.0),
    FlSpot(17, 80.0),
    FlSpot(18, 70.0),
    FlSpot(19, 80.0),
    FlSpot(20, 90.0),
    FlSpot(21, 100.0),
    FlSpot(22, 110.0),
    FlSpot(23, 120.0),
    FlSpot(24, 130.0),
    FlSpot(25, 140.0),
    FlSpot(26, 150.0),
    FlSpot(27, 160.0),
    FlSpot(28, 170.0),
    FlSpot(29, 180.0),
    FlSpot(30, 190.0)
  ];
  List<FlSpot> _monthlySpots = [
    FlSpot(0, 110.0),
    FlSpot(1, 110.0),
    FlSpot(2, 130.0),
    FlSpot(3, 100.0),
    FlSpot(4, 130.0),
    FlSpot(5, 160.0),
    FlSpot(6, 190.0),
    FlSpot(7, 150.0),
    FlSpot(8, 170.0),
    FlSpot(9, 180.0),
    FlSpot(10, 140.0),
    FlSpot(11, 150.0),
  ];
  List<FlSpot> _monthlySpots1 = [
    FlSpot(0, 60),
    FlSpot(1, 60),
    FlSpot(2, 80),
    FlSpot(3, 50),
    FlSpot(4, 80),
    FlSpot(5, 110),
    FlSpot(6, 140.0),
    FlSpot(7, 100.0),
    FlSpot(8, 120.0),
    FlSpot(9, 130.0),
    FlSpot(10, 170.0),
    FlSpot(11, 100.0),
  ];
  List<FlSpot> _monthlySpots2 = [
    FlSpot(0, 20.0), //
    FlSpot(1, 20.0), //
    FlSpot(2, 40.0), //
    FlSpot(3, 10.0), //
    FlSpot(4, 40.0), //
    FlSpot(5, 70.0), //
    FlSpot(6, 100.0), //
    FlSpot(7, 60.0), //
    FlSpot(8, 80.0),
    FlSpot(9, 90.0),
    FlSpot(10, 130.0),
    FlSpot(11, 60.0),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FadeInUp(
                duration: Duration(milliseconds: 1000),
                from: 60,
                child: Container(
                  height: 150.h,
                  child: LineChart(
                    mainData(),
                    curve: Curves.easeInOutCubic,
                    duration: const Duration(milliseconds: 1000),
                  )
                ),
              ),
              AnimatedContainer(
                // color: Colors.amber,
                duration: const Duration(milliseconds: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _currentIndex == 0 ?AppColor.backgroundgrey.withOpacity(0.5) : null,
                        ),
                        child: Center(child: Content(data: "Week", color: Colors.white, size: 13, weight: FontWeight.bold,) 
                         ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: AnimatedContainer(
                        height: 40.h,
                        width: 80.w,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _currentIndex == 1 ?AppColor.backgroundgrey.withOpacity(0.5) : null,
                        ),
                        child: Center(child: Content(data: "Month", color:Colors.white, size: 13, weight: FontWeight.bold,) 
                         ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: AnimatedContainer(
                        height: 40.h,
                        width: 80.w,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: _currentIndex == 2 ? AppColor.backgroundgrey.withOpacity(0.5) : null,
                        ),
                        child:  Center(child: Content(data: "Year", color:Colors.white, size: 13, weight: FontWeight.bold,) 
                         ),
                      ),
                    ),
    
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _currentIndex == 3 ? AppColor.backgroundgrey.withOpacity(0.5) : null ,
                        ),
                        child: Center(child: Content(data: "All", color:Colors.white, size: 13, weight: FontWeight.bold,) 
                         ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 5.h,)
            ]
          ),
    );
  }
  LineChartData mainData() {
    return LineChartData(
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        show: false,
        horizontalInterval: 1.6,
        drawVerticalLine: false
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles:AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles:const AxisTitles(sideTitles:  SideTitles(
          showTitles: false,
          reservedSize: 22,
          interval: 1,
        )),
          // getTextStyles: (context, value) => const TextStyle(
          //   color: Color(0xff68737d),
          //   fontWeight: FontWeight.bold,
          //   fontSize: 8,
          // ),
          // getTitles: (value) {
          //   switch (value.toInt()) {
          //     case 1:
          //       return 'JAN';
          //     case 2:
          //       return 'FEB';
          //     case 3:
          //       return 'MAR';
          //     case 4:
          //       return 'APR';
          //     case 5:
          //       return 'MAY';
          //     case 6:
          //       return 'JUN';
          //     case 7:
          //       return 'JUL';
          //     case 8:
          //       return 'AUG';
          //     case 9:
          //       return 'SEP';
          //     case 10:
          //       return 'OCT';
          //     case 11:
          //       return 'NOV';
          //     case 12:
          //       return 'DEC';
          //   }
          //   return '';
          // },
          // margin: 10,
        // leftTitles: SideTitles(
        //   showTitles: false,
        //   interval: 1,
        //   getTextStyles: (context, value) => const TextStyle(
        //     color: Color(0xff67727d),
        //     fontWeight: FontWeight.bold,
        //     fontSize: 12,
        //   ),
        //   getTitles: (value) {
        //     switch (value.toInt()) {
        //       case 1:
        //         return '10k';
        //       case 3:
        //         return '30k';
        //       case 5:
        //         return '50k';
        //     }
        //     return '';
        //   },
        // ),
      ),
      minX: 0,
      maxX: _currentIndex == 0 ? _daylySpots.length-1.toDouble() : _currentIndex == 1 ? _monthlySpots.length-1.toDouble() : _currentIndex == 2 ? _daylySpots.length-20.toDouble() : _daylySpots.length.toDouble(),
      minY: 0,
      maxY: 200,
      lineTouchData: LineTouchData(
        getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((index) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Colors.white.withOpacity(0.1),
                strokeWidth: 2,
                dashArray: [3, 3],
              ),
              FlDotData(
                show: false,
                getDotPainter: (spot, percent, barData, index) =>
                  FlDotCirclePainter(
                    radius: 8,
                    color: [
                      Colors.black,
                      Colors.black,
                    ][index],
                    strokeWidth: 2,
                    strokeColor: Colors.black,
                  ),
              ),
            );
          }).toList();
        },
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipPadding: const EdgeInsets.all(8),
          tooltipBgColor: Color(0xff2e3747).withOpacity(0.8),
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((touchedSpot) {
              return LineTooltipItem(
                '\$${touchedSpot.y.round()}.00',
                const TextStyle(color: Colors.white, fontSize: 12.0),  
              );
            }).toList();
          },
        ),
        handleBuiltInTouches: true,
      ),
      lineBarsData: [
        LineChartBarData(
          spots: _currentIndex == 0
              ? _daylySpots1
              : _currentIndex == 1
                  ? _monthlySpots2
                  : _daylySpots,
          isCurved: true,
          color: AppColor.darkPurple,
          barWidth: 4,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
              colors: [
             AppColor.darkPurple.withOpacity(0.3),
              AppColor.darkPurple.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
              ),
        ),
        LineChartBarData(
          spots: _currentIndex == 0 ? _daylySpots : _currentIndex == 1 ? _monthlySpots : _daylySpots,
          isCurved: true,
          color:AppColor.lightOrange,
          barWidth: 4,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
              AppColor.lightOrange.withOpacity(0.3),
              AppColor.lightOrange.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
            // gradientFrom: Offset(0, 0),
            // gradientTo: Offset(0, 1),
            // colors: [
            //   Color(0xffe68823).withOpacity(0.1),
            //   Color(0xffe68823).withOpacity(0),
            // ]
          ),
        ),  
        LineChartBarData(
          spots: _currentIndex == 0
              ? _daylySpots2
              : _currentIndex == 1
                  ? _monthlySpots
                  : _daylySpots,
          isCurved: true,
          color: Colors.white,
          barWidth: 4,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
              colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
              ),
        ),   
      ],
    );
  }
}