import 'package:flutter/material.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeCameraScanner.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeTitleAndDescription.widget.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QRCodeCameraScanner(),
          QRCodeTitleAndDescription(),
        ],
      ),
    );
  }
}
