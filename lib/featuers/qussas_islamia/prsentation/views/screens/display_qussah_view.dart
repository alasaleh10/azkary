import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussass_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayQussahView extends StatelessWidget {
  final QussassModel qussassModel;
  const DisplayQussahView({super.key, required this.qussassModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          qussassModel.number!,
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: InkWell(
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: qussassModel.label!));
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
            },
            child: Text(
              qussassModel.label!,
              style: AppStyls.styleRegular23(context)
                  .copyWith(height: 2.5, fontFamily: AppFonst.amiriFont),
            ),
          ),
        ),
      ),
    );
  }
}
