import 'package:flutter/material.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeCameraScanner.widget.dart';
import 'package:qr_code_scanner_module/widgets/qRCodeTitleAndDescription.widget.dart';

class PortraitView extends StatelessWidget {
  final String? title;
  final String? description;

  const PortraitView({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const QRCodeCameraScanner(),
          QRCodeTitleAndDescription(
            title: title,
            description: description,
          ),
        ],
      ),
    );
  }
}
