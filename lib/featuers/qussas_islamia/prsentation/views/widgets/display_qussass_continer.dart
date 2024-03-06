import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussass_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DisplayTitleQussassContiner extends StatelessWidget {
  final QussassModel qussassModel;
  const DisplayTitleQussassContiner({super.key, required this.qussassModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(AppRouters.displayQussahView, extra: qussassModel);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            qussassModel.number!,
            style: AppStyls.styleRegular23(context)
                .copyWith(fontFamily: AppFonst.amiriFont),
          ),
        ),
      ),
    );
  }
}
