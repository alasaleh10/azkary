import 'package:azkary/featuers/islamiiah/data/islamiahh_home_list.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamiaa_home_items_continer.dart';
import 'package:flutter/material.dart';

class IslamiaaMobileLayout extends StatelessWidget {
  const IslamiaaMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: islamiaahHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: IslamiaaHomeItemsContiner(
              islamiahhHomeModel: islamiaahHomeList[index]),
        );
      },
    );
  }
}
