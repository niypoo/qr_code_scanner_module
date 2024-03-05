import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/responsiveView.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_module/widgets/qRCodePageAppBar.widget.dart';

import 'layouts/landscape.layout.dart';
import 'layouts/portrait.layout.dart';

class QRCodeScannerView extends StatelessWidget {
  final String? pageTitle;
  final String? title;
  final String? description;

  const QRCodeScannerView({
    Key? key,
    this.pageTitle,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold.padding(
      appBar:
          context.isLandscape ? null : QRCodePageAppBar(pageTitle: pageTitle),
      child: FlyLayoutResponsiveView(
        portrait: PortraitView(
          title: title,
          description: description,
        ),
        landscape: LandscapeView(
          pageTitle: pageTitle,
          title: title,
          description: description,
        ),
      ),
    );
  }
}
