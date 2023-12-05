import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeCameraScanner.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodePageAppBar.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeTitleAndDescription.widget.dart';

class LandscapeView extends StatelessWidget {
  final String? title;
  final String? description;
  final String? pageTitle;
  const LandscapeView({
    Key? key,
    this.title,
    this.description,
    this.pageTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyLandscapeView(
      childA: SingleChildScrollView(
        child: Column(
          children: [
            QRCodePageAppBar(pageTitle: pageTitle),
            QRCodeTitleAndDescription(
              title: title,
              description: description,
            ),
          ],
        ),
      ),
      childB: const SingleChildScrollView(
        child: Column(
          children: [
            QRCodeCameraScanner(),
          ],
        ),
      ),
    );
  }
}
