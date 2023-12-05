import 'package:flutter/material.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_module/qrCodeScanner.controller.dart';

class QRCodePageAppBar extends GetView<QRCodeScannerController>
    implements PreferredSizeWidget {
  const QRCodePageAppBar({
    Key? key,
    this.pageTitle,
  }) : super(key: key);

  final String? pageTitle;

  @override
  Widget build(BuildContext context) {
    return FlyAppBar(
      title: pageTitle ?? 'Code scanner'.tr,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
