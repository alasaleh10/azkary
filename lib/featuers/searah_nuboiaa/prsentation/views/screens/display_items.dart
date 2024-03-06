import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/custom_snak_bar.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/searah_nuboiaa/data/serah_model_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplaySerahItems extends StatelessWidget {
  final SerahModelItems items;
  const DisplaySerahItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * .1,
        title: Text(
          items.number!,
          style: AppStyls.styleBold25(context),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: InkWell(
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: items.label!));
                ScaffoldMessenger.of(context)
                    .showSnackBar(customSnackBar(context, title: 'تم النسخ'));
              },
              child: Text(
                items.label!,
                style: AppStyls.styleRegular23(context)
                    .copyWith(fontFamily: AppFonst.amiriFont, height: 2.5),
              ),
            ),
          )),
    );
  }
}
