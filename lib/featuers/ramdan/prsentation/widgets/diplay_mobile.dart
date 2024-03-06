import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/ramdan/prsentation/ramadan_cuibt/ramadan_cubit.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/ramadan_display_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RamdanDisplayMobile extends StatelessWidget {
  const RamdanDisplayMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RamadanCubit, RamadanState>(
      builder: (context, state) {
        if (state is RamadanSucsess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: RamadnDisplayContier(ramadanModel: state.items[index]),
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
