import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/islamiiah/data/islamiahh_home_list.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamiaa_home_items_continer.dart';
import 'package:flutter/material.dart';

class IslamiaaTabletLayout extends StatelessWidget {
  const IslamiaaTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: islamiaahHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: 8, horizontal: screenWidth(context) * .16),
          child: IslamiaaHomeItemsContiner(
              islamiahhHomeModel: islamiaahHomeList[index]),
        );
      },
    );
  }
}
