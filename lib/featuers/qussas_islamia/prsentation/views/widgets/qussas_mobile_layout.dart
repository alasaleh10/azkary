import 'package:azkary/featuers/qussas_islamia/data/qussa_home_list.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/qussas_home_continer.dart';
import 'package:flutter/material.dart';

class QussassMobileLayout extends StatelessWidget {
  const QussassMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: qussasList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: QussassHomeContiner(qussassHomeModel: qussasList[index]));
      },
    );
  }
}
