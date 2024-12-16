import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/navbar_provider.dart';
import '../resources/components/navbar_widget.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final navbarProvider = Provider.of<NavbarProvide>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Consumer<NavbarProvider>(builder: (context, value, child) {
            return screens[value.screen];
          }),
          //  screens[selectedIndex],
          Positioned(
              // bottom: 1,
              child: navBar(context))
        ],
      ),
    );
  }
}
