import 'package:app_configuration_service/appInfo.config.dart';
import 'package:flutter/material.dart';
import 'package:fly_ui/views/widgets/listTile/tileStep.widget.dart';
import 'package:get/get.dart';

class QrCodeUsedForHint extends StatelessWidget {
  const QrCodeUsedForHint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppConfigService.to.space!.m),
      child: Column(
        children: [
          FlyListTileStep(
            step: '1',
            title: 'Adding a new diabetic.'.tr,
            description:
                'You can scan the QR code to add a new diabetic to your diabetes list.'
                    .tr,
          ),
          FlyListTileStep(
            step: '2',
            title: 'Viewing a diabetic.'.tr,
            description:
                'You can scan qr-code for view a diabetic file if you have added it before.'
                    .tr,
          ),
        ],
      ),
    );
  }
}
