import 'package:get/get.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.binding.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.view.dart';

class QrCodeScannerHelper {
  static Future<Map<String, String>?> show() async {
    return await Get.to(
      () => const QRCodeScannerView(),
      binding: QRCodeScannerBinding(),
    ) as Map<String, String>?;
  }

  // prams => convert query params to map
  static Map<String, String> splitQueryString(String value) {
    return Uri.splitQueryString(value);
  }
}
