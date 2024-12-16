import 'package:flutter/material.dart';
import 'package:pay_your/resources/color.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key, this.color = AppColor.darkBrownHeading}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: CircularProgressIndicator(
              color: color,
              strokeWidth: 2,
            ),
          ),
        ],
      ),
    );
  }
}
