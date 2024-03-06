import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/featuers/ahadeth/data/ahadeeth_home_model.dart';
import 'package:flutter/material.dart';

class AhadeethHomeContiner extends StatelessWidget {
  final AhadeethHomeModel ahadeethHomeModel;
  const AhadeethHomeContiner({super.key, required this.ahadeethHomeModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kPrimiryColor),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          ahadeethHomeModel.title,
          style: AppStyls.styleRegular23(context)
              .copyWith(fontFamily: AppFonst.amiriFont),
        ),
      ),
    );
  }
}
