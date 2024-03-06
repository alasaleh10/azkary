import 'package:azkary/featuers/ramdan/data/ramdan_home_list.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/ramdan_home_continer.dart';
import 'package:flutter/material.dart';

class RamdanMobile extends StatelessWidget {
  const RamdanMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ramdanList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: RamdanHomeContiner(ramdanHomeModel: ramdanList[index]),
        );
      },
    );
  }
}
