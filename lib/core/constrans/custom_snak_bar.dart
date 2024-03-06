import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:flutter/material.dart';

SnackBar customSnackBar(BuildContext context, {required String title}) {
  return SnackBar(
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.symmetric(vertical: 20),
      backgroundColor: AppColors.kPrimiryColor,
      content: Center(
          child: Text(
        title,
        style: AppStyls.styleRegular20(context)
            .copyWith(color: AppColors.kPrimiryColor3),
      )));
}
