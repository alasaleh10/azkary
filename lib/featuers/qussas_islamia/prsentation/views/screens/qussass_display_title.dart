import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/qussass_cuibt/qussass_cubit.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/display_qussas_desktop.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/display_qussass_tablet.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/display_qusss_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QussassDisplayTitle extends StatelessWidget {
  final List data;
  const QussassDisplayTitle({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QussassCubit()..getQussass(jsonFile: data[1]),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight(context) * .1,
          title: Text(
            data[0],
            style: AppStyls.styleBold25(context),
          ),
        ),
        body: AdaptiveLayOut(
          mobileLayout: (context) => const DisplayQussasMobile(),
          tabletLAyout: (context) => const DisplayQussasTablet(),
          desktopLayout: (context) => const DisplayQussasDeskTop(),
        ),
      ),
    );
  }
}
