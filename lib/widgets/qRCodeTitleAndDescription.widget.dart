import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QRCodeTitleAndDescription extends StatelessWidget {
  const QRCodeTitleAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          'Point camera at the code'.tr,
          style: Get.textTheme.headline5,
          textAlign: TextAlign.center,
        ),
        AutoSizeText(
          'Simply point the camera and scan their code.'.tr,
          style: Get.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
