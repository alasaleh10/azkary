import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/featuers/adeaa/data/adeaa_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayDoaaContiner extends StatelessWidget {
  final AdeaaModel adeaaModel;
  const DisplayDoaaContiner({super.key, required this.adeaaModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: adeaaModel.text!));
        ScaffoldMessenger.of(context)
            .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            adeaaModel.text!,
            textAlign: TextAlign.center,
            style: AppStyls.styleRegular23(context)
                .copyWith(fontFamily: AppFonst.amiriFont),
          ),
        ),
      ),
    );
  }
}
