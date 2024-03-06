import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/hajj/data/hajj_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HajjHomeContiner extends StatelessWidget {
  final HajjHomeModel hajjHomeModel;
  const HajjHomeContiner({super.key, required this.hajjHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.displayHajjTitle,
            extra: [hajjHomeModel.title, hajjHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          hajjHomeModel.title,
          style: AppStyls.styleRegular23(context)
              .copyWith(fontFamily: AppFonst.amiriFont),
        )),
      ),
    );
  }
}
