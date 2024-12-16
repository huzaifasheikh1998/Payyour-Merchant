import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
String _scanBarcode = 'Unknown';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  Future<void> ssscanQR() async {
    // logoutCheck(context, readerLoginIdS, readerLoginUpdateS);
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff2c6e49', 'Cancel', true, ScanMode.QR);
      if (barcodeScanRes != "-1") {
        print("qr scannedddddddddd");
        // scanApiFunc(context, barcodeScanRes.toString());
        // ScanApiFunc(context, barcodeScanRes.toString(),
        //     Credential_List.first.response!.walletId.toString());
      } else {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Profile2()));
      }
      print("$barcodeScanRes barcodeScannnnResult");
      print("barcodeScannnnResult");
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      print(
          "qr scannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn Qr Scan $_scanBarcode");
      _scanBarcode = barcodeScanRes;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}