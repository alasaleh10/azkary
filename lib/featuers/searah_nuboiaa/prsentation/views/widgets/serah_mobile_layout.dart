import 'package:azkary/featuers/searah_nuboiaa/data/serah_list.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_home_continer.dart';
import 'package:flutter/material.dart';

class SerahMobileLayout extends StatelessWidget {
  const SerahMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: serahList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: SerahHomeContiner(serahModel: serahList[index]));
      },
    );
  }
}
