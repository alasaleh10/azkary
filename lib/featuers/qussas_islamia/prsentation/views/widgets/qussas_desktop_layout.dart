import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussa_home_list.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/qussas_home_continer.dart';
import 'package:flutter/material.dart';

class QussassDeskTopLayout extends StatelessWidget {
  const QussassDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: qussasList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * .2, vertical: 8),
            child: QussassHomeContiner(qussassHomeModel: qussasList[index]));
      },
    );
  }
}
