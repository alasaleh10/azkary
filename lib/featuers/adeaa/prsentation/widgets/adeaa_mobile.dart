import 'package:azkary/featuers/adeaa/data/adeaa_home_list.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/adeaa_home_continer.dart';
import 'package:flutter/material.dart';

class AdeaaMobileLayout extends StatelessWidget {
  const AdeaaMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: adeeHomeList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: AdeaaHomeContiner(adeaaHomeModel: adeeHomeList[index]));
      },
    );
  }
}
