import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/featuers/home/data/home_items_list.dart';
import 'package:azkary/featuers/home/data/home_model.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeItemsContiner extends StatelessWidget {
  final int index;
  final HomeModel homeModel;
  const HomeItemsContiner(
      {super.key, required this.homeModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(homeItems[index].page, extra: homeModel.title);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: ListTile(
            title: Text(
              homeModel.title,
              style: AppStyls.styleRegular25(context),
            ),
            leading:
                Icon(homeModel.icon, size: 25, color: AppColors.kPrimiryColor2),
            dense: true,
          ),
        ),
      ),
    );
  }
}
