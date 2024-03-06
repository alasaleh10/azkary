import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamia_desktop_layout.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamia_mobile_layout.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamia_tablet_layout.dart';
import 'package:flutter/material.dart';

class IslamiaahView extends StatelessWidget {
  final String title;
  const IslamiaahView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          title,
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: AdaptiveLayOut(
        mobileLayout: (context) => const IslamiaaMobileLayout(),
        tabletLAyout: (context) => const IslamiaaTabletLayout(),
        desktopLayout: (context) => const IslamiaaDeskTopLayout(),
      ),
    );
  }
}
