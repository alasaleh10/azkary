import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/hajj/data/hajj_model.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DisplayHajjContiner extends StatelessWidget {
  final HajjModel hajjModel;
  const DisplayHajjContiner({super.key, required this.hajjModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(AppRouters.displayHajjItems, extra: hajjModel);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            hajjModel.title!,
            style: AppStyls.styleRegular23(context)
                .copyWith(fontFamily: AppFonst.amiriFont),
          ),
        ),
      ),
    );
  }
}
