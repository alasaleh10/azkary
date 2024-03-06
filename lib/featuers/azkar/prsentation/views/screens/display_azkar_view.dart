import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/adaptive_layout.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/azkar/prsentation/manger/azkar_cuibt/azkar_cubit.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/display_azkar_mobile_layout.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/display_desktop_layout.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/display_tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisPlayAzkarView extends StatelessWidget {
  final List data;
  const DisPlayAzkarView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AzkarCubit()..getAzkar(jsonFile: data[1]),
        child: BlocBuilder<AzkarCubit, AzkarState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                toolbarHeight: screenHeight(context) * .1,
                title: Text(
                  data[0],
                  style: AppStyls.styleBold25(context),
                ),
              ),
              body: AdaptiveLayOut(
                mobileLayout: (context) => const DisplayMobileLayout(),
                tabletLAyout: (context) => const DisplayTebletLayout(),
                desktopLayout: (context) => const DisplayDeskTopLayout(),
              ),
            );
          },
        ));
  }
}
