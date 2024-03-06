import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/adeaa/data/adeaa_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdeaaHomeContiner extends StatelessWidget {
  final AdeaaHomeModel adeaaHomeModel;
  const AdeaaHomeContiner({super.key, required this.adeaaHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.displayDoaa,
            extra: [adeaaHomeModel.title, adeaaHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            adeaaHomeModel.title,
            textAlign: TextAlign.center,
            style: AppStyls.styleRegular23(context)
                .copyWith(fontFamily: AppFonst.amiriFont),
          ),
        ),
      ),
    );
  }
}
