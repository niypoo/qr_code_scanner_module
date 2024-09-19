import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class QRCodeScannerController extends GetxController {
  static QRCodeScannerController get to => Get.find();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  //properties
  bool isHandling = false;
  final String? redirectTo = Get.arguments;

  void scan(String? value) {
    // if scanner is start handle @skip
    if (isHandling) return;

    // if qr code is empty
    if (value == null || value.isEmpty) return;

    // else @start Handle to avoid duplicated
    isHandling = true;

    // go to Accepting invitation with prams
    Get.back(result: value);
  }

  void onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      scan(scanData.code);
    });
  }
}
