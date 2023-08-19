import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldPadding.widget.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_module/widgets/qRCodePageAppBar.widget.dart';

import 'layouts/landscape.layout.dart';
import 'layouts/portrait.layout.dart';

class QRCodeScannerView extends StatelessWidget {
  const QRCodeScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold(
      appBar: context.isLandscape ? null : const QRCodePageAppBar(),
      child: FlyScaffoldPadding(
        child:
            context.isLandscape ? const LandscapeView() : const PortraitView(),
      ),
    );
  }
}
