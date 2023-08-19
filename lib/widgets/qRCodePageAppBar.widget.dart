import 'package:flutter/material.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.controller.dart';

class QRCodePageAppBar extends GetView<QRCodeScannerController>
    implements PreferredSizeWidget {
  const QRCodePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyAppBar(
      title: 'QR Coder scanner'.tr,
      // actions: [
      //   // IconButton(
      //   //   onPressed: controller.youCanUseQrCodeForBottomSheet,
      //   //   icon: Icon(UniconsLine.question_circle),
      //   // ),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
