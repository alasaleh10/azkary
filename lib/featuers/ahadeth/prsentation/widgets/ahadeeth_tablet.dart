import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/ahadeth/data/ahadeeth_home_list.dart';
import 'package:azkary/featuers/ahadeth/prsentation/widgets/ahadeeth_home_continer.dart';
import 'package:flutter/material.dart';

class AhadeethTablet extends StatelessWidget {
  const AhadeethTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: ahadeethHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * .16, vertical: 10),
          child:
              AhadeethHomeContiner(ahadeethHomeModel: ahadeethHomeList[index]),
        );
      },
    );
  }
}
