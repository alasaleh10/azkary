import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/searah_nuboiaa/data/serah_model_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SerahItems extends StatelessWidget {
  final SerahModelItems items;
  const SerahItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(AppRouters.displaySerahItems, extra: items);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          items.number!,
          style: AppStyls.styleRegular23(context)
              .copyWith(fontFamily: AppFonst.amiriFont),
        )),
      ),
    );
  }
}
