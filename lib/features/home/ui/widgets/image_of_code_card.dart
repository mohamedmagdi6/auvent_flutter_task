import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class ImageOfCodeCard extends StatelessWidget {
  const ImageOfCodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(ImageAssets.securityVault),
        Image.asset(ImageAssets.nawelsLetter),
      ],
    );
  }
}
