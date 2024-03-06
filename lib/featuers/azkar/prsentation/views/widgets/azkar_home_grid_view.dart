import 'package:azkary/featuers/azkar/data/azkar_home_list.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_items_continer.dart';
import 'package:flutter/material.dart';

class AzkarSliverGridView extends StatelessWidget {
  final int typeIndex;
  const AzkarSliverGridView({super.key, required this.typeIndex});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: azkarItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          mainAxisExtent: 80,
          crossAxisCount: typeIndex),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AzkarItemsContiner(
              azkarHomeModel: azkarItems[index],
            ));
      },
    );
  }
}
