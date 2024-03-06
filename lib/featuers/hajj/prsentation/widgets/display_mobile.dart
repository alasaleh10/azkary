import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/hajj/prsentation/hajj_cuibt/hajj_cubit.dart';
import 'package:azkary/featuers/hajj/prsentation/widgets/display_hajj_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayHajjMobile extends StatelessWidget {
  const DisplayHajjMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        if (state is HajjSucsess) {
          return ListView.builder(
            itemCount: state.hajj.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: DisplayHajjContiner(hajjModel: state.hajj[index]),
              );
            },
          );
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
