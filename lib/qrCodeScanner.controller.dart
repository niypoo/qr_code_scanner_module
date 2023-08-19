import 'package:get/get.dart';

class QRCodeScannerController extends GetxController {
  static QRCodeScannerController get to => Get.find();

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

    // prams => convert query params to map
    final Map<String, String> params = Uri.splitQueryString(value);

    // go to Accepting invitation with prams
    Get.back(result: params);
  }
}
