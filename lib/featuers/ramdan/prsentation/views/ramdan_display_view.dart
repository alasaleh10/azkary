import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/ramdan/prsentation/ramadan_cuibt/ramadan_cubit.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/diplay_mobile.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/display_desktop.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/display_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RamdanDisplayView extends StatelessWidget {
  final List data;
  const RamdanDisplayView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RamadanCubit()..getRamadan(jsonFile: data[1]),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight(context) * .1,
          title: Text(
            data[0],
            style: AppStyls.styleBold25(context),
          ),
        ),
        body: AdaptiveLayOut(
          mobileLayout: (context) => const RamdanDisplayMobile(),
          tabletLAyout: (context) => const RamdanDisplayTablet(),
          desktopLayout: (context) => const RamdanDisplayDeskTop(),
        ),
      ),
    );
  }
}
