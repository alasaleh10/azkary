import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_home_grid_view.dart';
import 'package:flutter/material.dart';

class AzkarDeskTopLayout extends StatelessWidget {
  const AzkarDeskTopLayout({super.key});

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
