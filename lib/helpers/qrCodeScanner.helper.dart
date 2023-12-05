import 'package:get/get.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.binding.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.view.dart';

class QrCodeScannerHelper {
  static Future<String?> show({
    String? pageTitle,
    String? title,
    String? description,
  }) async {
    return await Get.to(
      () => QRCodeScannerView(
        pageTitle: pageTitle,
        title: title,
        description: description,
      ),
      binding: QRCodeScannerBinding(),
    ) as String?;
  }

  // prams => convert query params to map
  static Map<String, String> splitQueryString(String value) {
    return Uri.splitQueryString(value);
  }
}
