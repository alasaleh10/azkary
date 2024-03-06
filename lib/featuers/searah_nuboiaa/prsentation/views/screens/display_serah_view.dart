import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/manger/serah_cuibt/serah_cubit.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/display_serah_desktop_layout.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/display_serah_mobile_layout.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/display_serah_tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplaySerahView extends StatelessWidget {
  final List data;
  const DisplaySerahView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SerahCubit()..getSerah(jsonFile: data[1]),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight(context) * .1,
          title: Text(
            data[0],
            style: AppStyls.styleBold25(context),
          ),
        ),
        body: AdaptiveLayOut(
          mobileLayout: (context) => const SerahDisplayMobileLayout(),
          tabletLAyout: (context) => const SerahDisplayTabletLayout(),
          desktopLayout: (context) => const SerahDisplayDesktopLayout(),
        ),
      ),
    );
  }
}
