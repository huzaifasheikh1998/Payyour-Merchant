// import 'package:flip_card/flip_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pay_your/Function/navigate.dart';
// import 'package:pay_your/resources/color.dart';
// import 'package:pay_your/resources/components/content.dart';
// import 'package:pay_your/resources/image.dart';
// import 'package:pay_your/view/qr_screen.dart';
// import 'package:pay_your/view/scanner_screen.dart';

// class FlipCardWidget extends StatefulWidget {
//   const FlipCardWidget({super.key});

//   @override
//   State<FlipCardWidget> createState() => _FlipCardWidgetState();
// }

// class _FlipCardWidgetState extends State<FlipCardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           FlipCard(
//             fill: Fill.fillBack,
//             direction: FlipDirection.VERTICAL,
//             side: CardSide.FRONT,
//             front: Transform.rotate(
//               angle: 0.23,
//               child: GestureDetector(
//                 onTap: () async {
//     try {
//       String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//       "#ff6666", "Cancel", true, ScanMode.QR);

//       print("Scanned QR Code: $barcodeScanRes");
//     } catch (e) {
//       print("Error while scanning QR code: $e");
//     }
//   },
//                 child: Container(
//                   margin: EdgeInsets.only(left: 160.w),
//                   height: 179.04.h,
//                   width: 179.04.w,  
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.r),
//                       color: AppColor.lightOrange,
//                       image: DecorationImage(image: AssetImage(downimage),
//                       fit: BoxFit.cover)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Row(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(left: 18),
//                               height: 40.h,
//                               width: 40.w,
//                               decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.5),
//                                   borderRadius: BorderRadius.circular(15.r)),
//                               child: Center(
//                                 child: Image.asset(
//                                   barcodeScanner,
//                                   height: 24.h,
//                                   width: 24.w,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(left: 10.w),
//                               child: Content(
//                                 data: "Scan",
//                                 size: 20,
//                                 color: Colors.white,
//                                 weight: FontWeight.w800,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 50, left: 70),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Content(
//                               data: "Send\nMoney",
//                               size: 18.h,
//                               color: Colors.white,
//                               weight: FontWeight.w800,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             back: 
            
//             Text("data")
//             // Transform.rotate(
//             //   angle: 0.23,
//             //   child: Positioned(
//             //     left: 200.w,
//             //     // child: Container(
//             //     //   margin: EdgeInsets.only(left: 170.w),
//             //     //   height: 179.04.h,
//             //     //   width: 179.04.w,
//             //     //   decoration: BoxDecoration(
//             //     //       borderRadius: BorderRadius.circular(20.r),
//             //     //       color: AppColor.lightOrange),
//             //     // ),
//             //   ),
//             // ),
//           ),
//           FlipCard(
//             fill: Fill
//                 .fillBack, 
//             direction: FlipDirection.VERTICAL,
//             side: CardSide.FRONT,
//             front: Transform.rotate(
//               angle: -0.26,
//               child: GestureDetector(
//                 onTap: () {
//                   navigate(context, QRScreen());
//                 },
//                 child: Container(
//                   // margin: EdgeInsets.only(right: 150.w),
//                   margin: EdgeInsets.only(right: 130, left: 5),
//                   height: 179.04.h,
//                   width: 179.04.w,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.r),
//                       color: AppColor.darkPurple,
                      
//                       ),
//                   child: Stack(
//                     children: [
//                       Image.asset(upper, height: 286.h,width: 286.w ,fit: BoxFit.cover,),
//                       Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 10),
//                           child: Row(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(left: 18),
//                                 height: 40.h,
//                                 width: 40.w,
//                                 decoration: BoxDecoration(
//                                     color: Colors.white.withOpacity(0.5),
//                                     borderRadius: BorderRadius.circular(15),
//                                     ),
//                                 child: Center(
//                                   child: Image.asset(
//                                     myQr,
//                                     height: 24.h,
//                                     width: 24.w,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Content(
//                                   data: "My QR",
//                                   size: 20,
//                                   color: Colors.white,
//                                   weight: FontWeight.w800,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 50, left: 40),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Content(
//                                 data: "Recieve\nMoney",
//                                 size: 22.h,
//                                 color: Colors.white,
//                                 weight: FontWeight.w800,
//                               ),
//                               // Content(
//                               //   data: "Money",
//                               //   size: 22.h,
//                               //   color: Colors.white,
//                               //   weight: FontWeight.w800,
//                               // ),
//                             ],
//                           ),
//                         ),
//                       ],
                    
//                     ),
//                     ]
//                   ),
//                 ),
//               ),
//             ), 
//             back:
//              Transform.rotate(
//               angle: -0.26,
//               child: Container(
//                 // margin: EdgeInsets.only(right: 150.w),
//                 margin: EdgeInsets.only(right: 130, left: 5),
//                 height: 179.04.h,
//                 width: 179.04.w,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20.r),
//                     color: AppColor.darkPurple,
                    
//                     ),
//                 child: Stack(
//                   children: [
//                     Image.asset(upper, height: 286.h,width: 286.w ,fit: BoxFit.cover,),
//                     Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Row(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(left: 18),
//                               height: 40.h,
//                               width: 40.w,
//                               decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.5),
//                                   borderRadius: BorderRadius.circular(15),
//                                   ),
//                               child: Center(
//                                 child: Image.asset(
//                                   myQr,
//                                   height: 24.h,
//                                   width: 24.w,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(horizontal: 10),
//                               child: Content(
//                                 data: "My QR",
//                                 size: 20,
//                                 color: Colors.white,
//                                 weight: FontWeight.w800,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 50, left: 40),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Content(
//                               data: "Recieve\nMoney",
//                               size: 22.h,
//                               color: Colors.white,
//                               weight: FontWeight.w800,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
                  
//                   ),
//                   ]
//                 ),
//               ),
//             ), 
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_your/Function/navigate.dart';
import 'package:pay_your/resources/color.dart';
import 'package:pay_your/resources/components/content.dart';
import 'package:pay_your/resources/image.dart';
import 'package:pay_your/view/qr_screen.dart';
import 'package:pay_your/view/scanner_screen.dart';

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({super.key});

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        SizedBox(
          height: 190.h,
          width: 350.w,
          child: Stack(
            children:[ 
              Positioned(
                right: 8,
                child: FlipCard(
                fill: Fill.fillBack,
                direction: FlipDirection.VERTICAL,
                side: CardSide.FRONT,
                front: Transform.rotate(
                   angle: 0.23,
                  // angle: 0,
                  child: GestureDetector(
                    onTap: () async {
                try {
                String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                "#ff6666", "Cancel", true, ScanMode.QR);
                      
                print("Scanned QR Code: $barcodeScanRes");
                } catch (e) {
                print("Error while scanning QR code: $e");
                }
                        },
                    child: Container(
                      // margin: EdgeInsets.only(left: 160.w),
                      height: 179.04.h,
                      width: 179.04.w,  
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: AppColor.lightOrange,
                          image: DecorationImage(image: AssetImage(downimage),
                          fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 18),
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15.r)),
                                  child: Center(
                                    child: Image.asset(
                                      barcodeScanner,
                                      height: 24.h,
                                      width: 24.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.w),
                                  child: Content(
                                    data: "Scan",
                                    size: 20,
                                    color: Colors.white,
                                    weight: FontWeight.w800,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 70),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Content(
                                  data: "Send\nMoney",
                                  size: 18.h,
                                  color: Colors.white,
                                  weight: FontWeight.w800,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                back: 
                
                Text("data")
                // Transform.rotate(
                //   angle: 0.23,
                //   child: Positioned(
                //     left: 200.w,
                //     // child: Container(
                //     //   margin: EdgeInsets.only(left: 170.w),
                //     //   height: 179.04.h,
                //     //   width: 179.04.w,
                //     //   decoration: BoxDecoration(
                //     //       borderRadius: BorderRadius.circular(20.r),
                //     //       color: AppColor.lightOrange),
                //     // ),
                //   ),
                // ),
                        ),
              ),
          
            // Positioned(
            //   left: 0, 
            //   // 179.04.w * 0.5,
            //   child: Transform.translate(
            //     offset: const Offset(-100.0,0.0),
            //     child: 
                Positioned(
                  right:170,
                  child: FlipCard(
                  fill: Fill
                      .fillBack, 
                  direction: FlipDirection.VERTICAL,
                  side: CardSide.FRONT,
                  front: Transform.rotate(
                     angle: -0.26,
                    child: GestureDetector(
                      onTap: () {
                        navigate(context, QRScreen());
                      },
                      child: Container(
                        // margin: EdgeInsets.only(right: 150.w),
                        // margin: EdgeInsets.only(right: 130, left: 5),
                        height: 179.04.h,
                        width: 179.04.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.darkPurple,
                            
                            ),
                        child: Stack(
                          children: [
                            Image.asset(upper, height: 286.h,width: 286.w ,fit: BoxFit.cover,),
                            Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 18),
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(15),
                                          ),
                                      child: Center(
                                        child: Image.asset(
                                          myQr,
                                          height: 24.h,
                                          width: 24.w,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Content(
                                        data: "My QR",
                                        size: 20,
                                        color: Colors.white,
                                        weight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 40),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Content(
                                      data: "Recieve\nMoney",
                                      size: 22.h,
                                      color: Colors.white,
                                      weight: FontWeight.w800,
                                    ),
                                    // Content(
                                    //   data: "Money",
                                    //   size: 22.h,
                                    //   color: Colors.white,
                                    //   weight: FontWeight.w800,
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          
                          ),
                          ]
                        ),
                      ),
                    ),
                  ), 
                  back:
                   Transform.rotate(
                    angle: -0.24,
                    child: Container(
                      // margin: EdgeInsets.only(right: 150.w),
                      // margin: EdgeInsets.only(right: 130, left: 5),
                      height: 179.04.h,
                      width: 179.04.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: AppColor.darkPurple,
                          
                          ),
                      child: Stack(
                        children: [
                          Image.asset(upper, height: 286.h,width: 286.w ,fit: BoxFit.cover,),
                          Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 18),
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(15),
                                        ),
                                    child: Center(
                                      child: Image.asset(
                                        myQr,
                                        height: 24.h,
                                        width: 24.w,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Content(
                                      data: "My QR",
                                      size: 20,
                                      color: Colors.white,
                                      weight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 40),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Content(
                                    data: "Recieve\nMoney",
                                    size: 22.h,
                                    color: Colors.white,
                                    weight: FontWeight.w800,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        
                        ),
                        ]
                      ),
                    ),
                  ), 
                        ),
                ),
              
            ],
          ),
        ),
        
      ],
    );
  }
}
