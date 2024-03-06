import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/azkar/prsentation/manger/azkar_cuibt/azkar_cubit.dart';
import 'package:azkary/featuers/azkar/prsentation/views/widgets/azkar_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayMobileLayout extends StatelessWidget {
  const DisplayMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      builder: (context, state) {
        if (state is AzkarSucsess) {
          return ListView.builder(
            itemCount: state.azkar.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: AzkarContiner(azkarModel: state.azkar[index]));
            },
          );
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
