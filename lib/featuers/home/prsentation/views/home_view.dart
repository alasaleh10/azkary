import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/desktop_layout.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/mobile_body_view.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/tablet_body_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        centerTitle: true,
        title: Text(
          'أذكــاري',
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: AdaptiveLayOut(
        mobileLayout: (context) => const MobileHomeBody(),
        tabletLAyout: (context) => const TabletHomeBody(),
        desktopLayout: (context) => const DesktopHomeBody(),
      ),
    );
  }
}
