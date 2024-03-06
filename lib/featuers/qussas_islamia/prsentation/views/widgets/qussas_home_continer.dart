import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussas_home_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QussassHomeContiner extends StatelessWidget {
  final QussassHomeModel qussassHomeModel;
  const QussassHomeContiner({super.key, required this.qussassHomeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRouters.qussassDisplayTitle,
            extra: [qussassHomeModel.title, qussassHomeModel.jsonFile]);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            qussassHomeModel.title,
            style: AppStyls.styleRegular20(context),
          ),
        ),
      ),
    );
  }
}
