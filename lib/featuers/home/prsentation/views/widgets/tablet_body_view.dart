import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/home/data/home_items_list.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/home_items_continer.dart';
import 'package:azkary/featuers/home/prsentation/views/widgets/mousq_image.dart';
import 'package:flutter/material.dart';

class TabletHomeBody extends StatelessWidget {
  const TabletHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: MousqImage(),
        ),
        SliverList.builder(
          itemCount: homeItems.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * .16, vertical: 15),
                child: HomeItemsContiner(
                  index: index,
                  homeModel: homeItems[index],
                ));
          },
        )
      ],
    );
  }
}
