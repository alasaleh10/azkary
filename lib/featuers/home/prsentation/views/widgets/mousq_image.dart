import 'package:azkary/core/constrans/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MousqImage extends StatelessWidget {
  const MousqImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 1,
      child: SvgPicture.asset(
        Assets.imagesMusq2,
      ),
    );
  }
}
