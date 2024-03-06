import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_desktop_layout.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_mobile_layout.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_tablet_layout.dart';
import 'package:flutter/material.dart';

class AzkarView extends StatelessWidget {
  final String title;
  const AzkarView({super.key, required this.title});

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
        mobileLayout: (context) => const AzkarMobileLayout(),
        tabletLAyout: (context) => const AzkarTabletLayout(),
        desktopLayout: (context) => const AzkarDeskTopLayout(),
      ),
    );
  }
}
