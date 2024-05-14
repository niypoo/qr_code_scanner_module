import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QRCodeTitleAndDescription extends StatelessWidget {
  final String? title;
  final String? description;

  const QRCodeTitleAndDescription({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          title ?? 'Point camera at the code'.tr,
          style: Get.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        AutoSizeText(
          description ?? 'Simply point the camera and scan the code.'.tr,
          style: Get.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
