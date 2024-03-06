import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/searah_nuboiaa/data/serah_list.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_home_continer.dart';
import 'package:flutter/material.dart';

class SerahTabletLayout extends StatelessWidget {
  const SerahTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: serahList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8, horizontal: screenWidth(context) * .16),
            child: SerahHomeContiner(serahModel: serahList[index]));
      },
    );
  }
}
