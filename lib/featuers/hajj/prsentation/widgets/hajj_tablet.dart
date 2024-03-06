import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/hajj/data/hajj_home_list.dart';
import 'package:azkary/featuers/hajj/prsentation/widgets/hajj_home_continer.dart';
import 'package:flutter/material.dart';

class HajjTablet extends StatelessWidget {
  const HajjTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: hajjHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * .16, vertical: 10),
          child: HajjHomeContiner(hajjHomeModel: hajjHomeList[index]),
        );
      },
    );
  }
}
