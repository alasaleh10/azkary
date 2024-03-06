import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/adeaa_desktop.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/adeaa_mobile.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/adeaa_tablet.dart';
import 'package:flutter/material.dart';

class AdeaaView extends StatelessWidget {
  final String title;
  const AdeaaView({super.key, required this.title});

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
        mobileLayout: (context) => const AdeaaMobileLayout(),
        tabletLAyout: (context) => const AdeaaTabletLayout(),
        desktopLayout: (context) => const AdeaaDeskTopLayout(),
      ),
    );
  }
}
