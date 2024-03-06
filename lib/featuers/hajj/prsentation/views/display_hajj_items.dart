import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/hajj/data/hajj_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayHajjItems extends StatelessWidget {
  final HajjModel hajjModel;
  const DisplayHajjItems({super.key, required this.hajjModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          hajjModel.title!,
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: InkWell(
            splashColor: AppColors.kPrimiryColor,
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: hajjModel.text!));
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
            },
            child: Text(
              hajjModel.text!,
              style: AppStyls.styleRegular23(context)
                  .copyWith(height: 2, fontFamily: AppFonst.amiriFont),
            ),
          ),
        ),
      ),
    );
  }
}
