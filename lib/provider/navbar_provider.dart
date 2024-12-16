import 'package:flutter/cupertino.dart';
import 'package:pay_your/view/balance_details_screen.dart';
import 'package:pay_your/view/more_screen.dart';
import 'package:pay_your/view/my_profile_screen.dart';
import 'package:pay_your/view/statistics_screen.dart';


const screens = [
  BalanceDetailsScreen(),
  MoreScreen(),
  // ProfileScreen(),
  StatisticsScreen(),
];

class NavbarProvider with ChangeNotifier {
  int _screen = 0;
  get screen => _screen;

  void changeScreen(int index) {
    // if (index == 0) {
    //   final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    //   homeProvider.changeNavPage();
    //   // homeProvider.changePage(0);
    // }
    _screen = index;
    notifyListeners();
  }
}
