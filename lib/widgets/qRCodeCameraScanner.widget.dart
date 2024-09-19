import 'package:app_configuration_service/appInfo.config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fly_ui/views/widgets/containers/container.widget.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.controller.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
// import 'package:qr_mobile_vision/qr_camera.dart';

class QRCodeCameraScanner extends GetView<QRCodeScannerController> {
  const QRCodeCameraScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyContainer(
      margin: EdgeInsets.only(
          top: AppConfigService.to.space!.xxl,
          bottom: AppConfigService.to.space!.s),
      color: Get.theme.cardColor,
      radius: AppConfigService.to.radius,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConfigService.to.radius),
        child: SizedBox(
          height: (context.isLandscape ? Get.height : Get.width) * 0.6,
          width: (context.isLandscape ? Get.height : Get.width) * 0.6,
          child: 
           QRView(
              key: controller.qrKey,
              onQRViewCreated: controller.onQRViewCreated,
            ),
          
          // QrcodeBarcodeScanner(
          //   qrCodeCallback: controller.scan,
          //   onError: (context, error) {
          //     return Center(
          //       child: Text(
          //         (error as PlatformException).message!.tr,
          //       ),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
