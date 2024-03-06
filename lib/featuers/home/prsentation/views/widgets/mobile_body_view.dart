import 'package:azkary/featuers/home/data/home_items_list.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/home_items_continer.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/mousq_image.dart';
import 'package:flutter/material.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: MousqImage()),
          SliverList.builder(
            itemCount: homeItems.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: HomeItemsContiner(
                    index: index,
                    homeModel: homeItems[index],
                  ));
            },
          )
        ],
      ),
    );
  }
}
