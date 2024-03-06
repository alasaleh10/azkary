import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/featuers/azkar/data/azkar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AzkarContiner extends StatelessWidget {
  final AzkarModel azkarModel;
  const AzkarContiner({super.key, required this.azkarModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: azkarModel.text!));
        ScaffoldMessenger.of(context)
            .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: AppColors.kPrimiryColor3,
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text(azkarModel.text!,
                style: AppStyls.styleRegular23Quran(context),
                textAlign: TextAlign.center),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    azkarModel.number!.toInt() == 1
                        ? 'مرة واحدة'
                        : azkarModel.number!.toInt() > 10
                            ? '${azkarModel.number!.toString()} مرة'
                            : '${azkarModel.number!.toString()} مرات',
                    style: AppStyls.styleRegular20(context),
                  )),
            ),
            const Divider(thickness: 2),
            const SizedBox(height: 5),
            Text(
              azkarModel.hint!,
              style: AppStyls.styleRegular20(context),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
