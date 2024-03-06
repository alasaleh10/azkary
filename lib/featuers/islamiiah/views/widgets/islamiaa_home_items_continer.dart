import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/islamiiah/data/islamih_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IslamiaaHomeItemsContiner extends StatelessWidget {
  final IslamiahhHomeModel islamiahhHomeModel;
  const IslamiaaHomeItemsContiner(
      {super.key, required this.islamiahhHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.displayIslamiaa,
            extra: [islamiahhHomeModel.title, islamiahhHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            islamiahhHomeModel.title,
            style: AppStyls.styleRegular25(context),
          ),
        ),
      ),
    );
  }
}
