import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/ramdan/data/ramadan_model.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RamadnDisplayContier extends StatelessWidget {
  final RamadanModel ramadanModel;
  const RamadnDisplayContier({super.key, required this.ramadanModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(AppRouters.ramadandisplayItems, extra: ramadanModel);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            ramadanModel.number!,
            textAlign: TextAlign.center,
            style: AppStyls.styleRegular20(context),
          ),
        ),
      ),
    );
  }
}
