import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/azkar/data/azkar_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AzkarItemsContiner extends StatelessWidget {
  final AzkarHomeModel azkarHomeModel;
  const AzkarItemsContiner({super.key, required this.azkarHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.disPlayAzkarView,
            extra: [azkarHomeModel.title, azkarHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.kPrimiryColor),
            color: AppColors.kPrimiryColor3),
        child: Center(
          child: Text(
            azkarHomeModel.title,
            style: AppStyls.styleRegular23(context),
          ),
        ),
      ),
    );
  }
}
