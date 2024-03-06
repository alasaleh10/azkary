import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/featuers/islamiiah/data/islamiaa_items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IslamiaaItemsContiner extends StatelessWidget {
  final IslamiaaItemsModel items;
  const IslamiaaItemsContiner({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: items.label ?? items.text!));
        ScaffoldMessenger.of(context)
            .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimiryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text(
              items.label ?? items.text!,
              style: AppStyls.styleRegular20(context),
            ),
          ],
        ),
      ),
    );
  }
}
