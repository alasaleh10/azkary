import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/searah_nuboiaa/data/serah_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SerahHomeContiner extends StatelessWidget {
  final SerahModel serahModel;
  const SerahHomeContiner({super.key, required this.serahModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.displaySerah,
            extra: [serahModel.title, serahModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            serahModel.title,
            textAlign: TextAlign.center,
            style: AppStyls.styleRegular23(context)
                .copyWith(fontFamily: AppFonst.amiriFont),
          ),
        ),
      ),
    );
  }
}
