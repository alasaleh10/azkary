import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/ramdan/data/ramadan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayRamadanItems extends StatelessWidget {
  final RamadanModel ramadanModel;
  const DisplayRamadanItems({super.key, required this.ramadanModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          ramadanModel.number!,
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: InkWell(
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: ramadanModel.label!));
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                ramadanModel.label!,
                style: AppStyls.styleRegular25(context)
                    .copyWith(fontFamily: AppFonst.amiriFont, height: 2.5),
              ),
            ),
          )),
    );
  }
}
