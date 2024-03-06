import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/islamiiah/prsentation/display_islamiaa_cuibt/display_islamiaa_cubit.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/dispaly_desktop_layout.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/display_mobile_layout.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/display_tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayIslamiaaView extends StatelessWidget {
  final List data;
  const DisplayIslamiaaView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DisplayIslamiaaCubit()..getIslamiaa(jsonFile: data[1]),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight(context) * .1,
          title: Text(data[0], style: AppStyls.styleBold25(context)),
        ),
        body: AdaptiveLayOut(
          mobileLayout: (context) => const DisplayIslamiaaMobileLayout(),
          tabletLAyout: (context) => const DisplayIslamiaaTabletLayout(),
          desktopLayout: (context) => const DisplayIslamiaaDeskTopLayout(),
        ),
      ),
    );
  }
}
