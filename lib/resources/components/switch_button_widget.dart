import 'package:flutter/material.dart';


class LanguageSwitch extends StatefulWidget {
  @override
  _LanguageSwitchState createState() => _LanguageSwitchState();
}

class _LanguageSwitchState extends State<LanguageSwitch> {
  int selectedIndex = 0;

  void _handleIndexChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120, // Adjust the width to fit your content
        height: 120, // Make it a square container
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: ToggleButtons(
          children: [
            Text('Eng', style: TextStyle(fontSize: 16)),
            Text('Urdu', style: TextStyle(fontSize: 16)),
          ],
          isSelected: [selectedIndex == 0, selectedIndex == 1],
          onPressed: _handleIndexChanged,
          selectedColor: Colors.white,
          fillColor: Colors.blue, // Highlighted color for the selected button
          borderRadius: BorderRadius.circular(60), // Make it round
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }
}