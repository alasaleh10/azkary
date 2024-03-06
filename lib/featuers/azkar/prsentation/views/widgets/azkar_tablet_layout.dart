import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_home_grid_view.dart';
import 'package:flutter/material.dart';

class AzkarTabletLayout extends StatelessWidget {
  const AzkarTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          AzkarSliverGridView(
            typeIndex: 3,
          )
        ],
      ),
    );
  }
}
