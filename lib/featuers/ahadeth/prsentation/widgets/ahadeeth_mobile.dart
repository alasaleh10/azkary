import 'package:azkary/featuers/ahadeth/data/ahadeeth_home_list.dart';
import 'package:azkary/featuers/ahadeth/prsentation/widgets/ahadeeth_home_continer.dart';
import 'package:flutter/material.dart';

class AhadeethMobile extends StatelessWidget {
  const AhadeethMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: ahadeethHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child:
              AhadeethHomeContiner(ahadeethHomeModel: ahadeethHomeList[index]),
        );
      },
    );
  }
}
