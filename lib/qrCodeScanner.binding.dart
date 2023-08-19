import 'package:get/get.dart';
import 'qrCodeScanner.controller.dart';

class QRCodeScannerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRCodeScannerController>(() => QRCodeScannerController());
  }
}
