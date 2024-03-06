import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:flutter/material.dart';

class AhadeethDisplayView extends StatelessWidget {
  final List data;
  const AhadeethDisplayView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          data[0],
          style: AppStyls.styleBold25(context),
        ),
      ),
    );
  }
}
