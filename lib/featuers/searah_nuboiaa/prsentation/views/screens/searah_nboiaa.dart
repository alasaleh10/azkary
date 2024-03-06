import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_desktop_layout.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_mobile_layout.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_tablet_layout.dart';
import 'package:flutter/material.dart';

class SerahNaboiaaView extends StatelessWidget {
  final String title;
  const SerahNaboiaaView({super.key, required this.title});

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
        mobileLayout: (context) => const SerahMobileLayout(),
        tabletLAyout: (context) => const SerahTabletLayout(),
        desktopLayout: (context) => const SerahDesktopLayout(),
      ),
    );
  }
}
