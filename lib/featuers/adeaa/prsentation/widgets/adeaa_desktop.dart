import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/adeaa/data/adeaa_home_list.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/adeaa_home_continer.dart';
import 'package:flutter/material.dart';

class AdeaaDeskTopLayout extends StatelessWidget {
  const AdeaaDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: adeeHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * .2, vertical: 8),
            child: AdeaaHomeContiner(adeaaHomeModel: adeeHomeList[index]));
      },
    );
  }
}
