import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/ramdan/data/ramdan_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RamdanHomeContiner extends StatelessWidget {
  final RamdanHomeModel ramdanHomeModel;
  const RamdanHomeContiner({super.key, required this.ramdanHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.ramadandisplayView,
            extra: [ramdanHomeModel.title, ramdanHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            ramdanHomeModel.title,
            textAlign: TextAlign.center,
            style: AppStyls.styleRegular20(context),
          ),
        ),
      ),
    );
  }
}
