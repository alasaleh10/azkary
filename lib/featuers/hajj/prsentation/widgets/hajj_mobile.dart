import 'package:azkary/featuers/hajj/data/hajj_home_list.dart';
import 'package:azkary/featuers/hajj/prsentation/widgets/hajj_home_continer.dart';
import 'package:flutter/material.dart';

class HajjMobile extends StatelessWidget {
  const HajjMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: hajjHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: HajjHomeContiner(hajjHomeModel: hajjHomeList[index]),
        );
      },
    );
  }
}
