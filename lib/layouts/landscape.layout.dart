import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeCameraScanner.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodePageAppBar.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeTitleAndDescription.widget.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FlyLandscapeView(
      childA: Column(
        children: [
          QRCodePageAppBar(),
          QRCodeTitleAndDescription(),
        ],
      ),
      childB: Column(
        children: [
          QRCodeCameraScanner(),
        ],
      ),
    );
  }
}
