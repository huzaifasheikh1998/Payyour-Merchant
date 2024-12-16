import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/resources/components/custom_tab_widget.dart';
import 'package:pay_your/provider/navbar_provider.dart';
import 'package:pay_your/view/balance_details_screen.dart';
import 'package:pay_your/view/login_screen.dart';
import 'package:pay_your/view/transactions_screen.dart';
import 'package:provider/provider.dart';
import 'ViewModel/password_visibility_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordVisibilityViewModel()),
        ChangeNotifierProvider(create: (_) => NavbarProvider()),
        // ChangeNotifierProvider(create: (_) => Viwmodel()),
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            useInheritedMediaQuery: true,
            designSize: const Size(375, 812),
            // designSize: const Size(428, 926),
            builder: (context, child) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  // title: 'Flutter Demo',
                  theme: ThemeData(
                    fontFamily: "Montserrat",
                    scrollbarTheme: ScrollbarThemeData(
                      trackVisibility: MaterialStateProperty.all(true),
                      trackColor: MaterialStateProperty.all(Color(0xffFEFEFE)),
                      // thumbColor: MaterialStateProperty.all(primaryColor),
                      thickness: MaterialStateProperty.all(7.0),
                      radius: Radius.circular(30),
                      minThumbLength: 100,
                    ),
                    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  home: LoginScreen());
            },
          );
        },
      ),
    );
  }
}












































// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool locked = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Lock/Unlock Icon'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               locked = !locked;
//             });
//           },
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 500),
//             curve: Curves.easeInOut,
//             transform: Matrix4.translationValues(
//               locked ? 0.0 : -50.0,
//               0.0,
//               0.0,
//             ),
//             child: Icon(
//               locked ? Icons.lock : Icons.lock_open,
//               size: locked ? 100.0 : 75.0, // Change the size for unlock icon
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }























// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SlidableScroll extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    
//     return DraggableScrollableSheet(
//           initialChildSize: 0.3,
//           minChildSize: 0.3,
//           maxChildSize: 0.85,
//           builder: (BuildContext context, scrollController) {
//             return ClipRRect(
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
//               child: Container(
//                 child: ListView(
//                   controller: scrollController,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: const BorderRadius.vertical(top: Radius.circular(30)
                      
//                         ),
//                           color: Colors.red,
//                       ),
//                       height: 200,
//                       width: 100.w,
//                     )
                      
//                     //  AnimatedOpacityContainer(
//                     //     scrollController: scrollController,
//                     //     height: 200,
//                     //     color: Colors.green,
//                     //     text: "Intermediate Widget",
//                     //   ),
                    
//                     // AnimatedOpacity(
                    
//                     // // opacity: showIntermediateWidget ? 1.0 : 0.0,
//                     // duration: Duration(milliseconds: 500),
//                     // child: Container(
//                     //   height: 200,
//                     //                 width: width,
//                     //   color: Colors.green,
//                     //   alignment: Alignment.center,
//                     //   child: Text(
//                     //     "Intermediate Widget",
//                     //     style: TextStyle(color: Colors.white),
//                     //   ),
//                     // ),
//                     //                 ),
                    
//                   ],
//                 ),
//               ),
//             );
//           }
          
//           );
//   }
// }





// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Slidable jModal Sheet'),
//       ),
//       body: StatisticsScreen(),
//     );
//   }
// }

// class HomeScreenContent extends StatefulWidget {
//   @override
//   _HomeScreenContentState createState() => _HomeScreenContentState();
// }
// class _HomeScreenContentState extends State<HomeScreenContent> {
  

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return DraggableScrollableSheet(
//       initialChildSize: 0.45,
//       minChildSize: 0.45,
//       maxChildSize: 0.8,
//       builder: (BuildContext context, scrollController) {
//         return ClipRRect(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//           child: Container(
//             child: ListView(
//               controller: scrollController,
//               children: [
//                 Container(
//                   height: 200,
//                   color: Colors.red,
//                 ),
//                 // AnimatedOpacityContainer(
//                 //   key: animatedOpacityKey,
                  
//                 //   color: Colors.green,
//                 //   text: "Intermediate Widget",
//                 //   scrollController: scrollController,
//                 // ),
//                 Container(
//                   height: 200,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class AnimatedOpacityContainer extends StatefulWidget {
  
//   final Color color;
//   final String text;
//   final ScrollController scrollController;

//   AnimatedOpacityContainer({
//     Key? key,
//     required this.color,
//     required this.text,
//     required this.scrollController,
//   }) : super(key: key);

//   @override
//   AnimatedOpacityContainerState createState() =>
//       AnimatedOpacityContainerState();
// }

// class AnimatedOpacityContainerState extends State<AnimatedOpacityContainer> {
//   bool isVisible = true;

//   @override
//   void initState() {
//     super.initState();
//     widget.scrollController.addListener(_onScroll);
//   }

//   void _onScroll() {
//     final offset = widget.scrollController.offset;
//     final maxOffset = widget.scrollController.position.maxScrollExtent;

//     if (offset > maxOffset * 0.5) {
//       if (!isVisible) {
//         setState(() {
//           isVisible = true;
//         });
//       }
//     } else {
//       if (isVisible) {
//         setState(() {
//           isVisible = false;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       duration: Duration(milliseconds: 500),
//       opacity: isVisible ? 1.0 : 0.0,
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         color: widget.color,
//         alignment: Alignment.center,
//         child: Text(
//           widget.text,
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     widget.scrollController.removeListener(_onScroll);
//     super.dispose();
//   }
// }