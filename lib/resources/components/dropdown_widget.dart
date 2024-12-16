import 'package:flutter/material.dart';

// class MyDropdownButton extends StatefulWidget {
//   @override
//   _MyDropdownButtonState createState() => _MyDropdownButtonState();
// }

// class _MyDropdownButtonState extends State<MyDropdownButton> {
//   String selectedOption = 'Week'; // Default selection

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedOption,
//       onChanged: ( newValue) {
//         setState(() {
//           selectedOption = newValue!;
//         });
//       },
//       items: <String>['Week', 'Year', 'Month']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }


import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/image.dart';

class CustomDropdownExample extends StatefulWidget {
  const CustomDropdownExample({Key? key}) : super(key: key);
  @override
  State<CustomDropdownExample> createState() => _CustomDropdownExampleState();
}
class _CustomDropdownExampleState extends State<CustomDropdownExample> {
  final jobRoleCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 114.w,
      child: CustomDropdown(
        selectedStyle: TextStyle(fontWeight: FontWeight.bold),
        borderRadius: BorderRadius.circular(10),
        // fieldSuffixIcon: Image.asset(dropdown,
        // height: 30,width: 20,),
        hintText: 'Select',
        items: const ['Week', 'Month', 'Year'],
        controller: jobRoleCtrl,
      ),
    );
  }
}