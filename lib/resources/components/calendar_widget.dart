import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/small_button.dart';
class LogoutAlert extends StatelessWidget {
  const LogoutAlert({super.key});
  @override
  Widget build(BuildContext context) {
    List<DateTime?> _rangeDatePickerValueWithDefaultValue = [
    DateTime(1999, 5, 6),
    DateTime(1999, 5, 21),
  ];

final config = CalendarDatePicker2Config(
      selectedRangeHighlightColor: AppColor.lightOrange.withOpacity(0.4),
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: AppColor.lightpurple,
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      dayTextStyle: const TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500)
    );


  String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
              .map((v) => v.toString().replaceAll('00:00:00.000', ''))
              .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate to $endDate';
      } else {
        return 'null';
      }
    }

    return valueText;
  }

  Widget _buildDefaultRangeDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
      selectedRangeHighlightColor: AppColor.lightOrange.withOpacity(0.4),
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: AppColor.lightpurple,
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      dayTextStyle: const TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500)
    );
    return CalendarDatePicker2(
        config: config,
        value: _rangeDatePickerValueWithDefaultValue,
        onValueChanged: (dates) =>
            (() => _rangeDatePickerValueWithDefaultValue = dates),
      );
  }
    
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Scaffold(
        backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 75.h),
                  height: 40.h,
                  width: 187.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
                  color: AppColor.white
                  ),
                  child: Center(child: 
                  Text(
                _getValueText(
                  config.calendarType,
                  _rangeDatePickerValueWithDefaultValue,
                ),
              ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                      height: 300.h,
                      width: 342.w,
                      child: _buildDefaultRangeDatePickerWithValue()),
                      PrimaryButton(title: "Go",)
              ],
            ),
            ),
        ),
      ],
    );
  }

}

          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     const Text('Selection(s):  '),
          //     const SizedBox(width: 10),
          //     Text(
          //       _getValueText(
          //         config.calendarType,
          //         _rangeDatePickerValueWithDefaultValue,
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 25),