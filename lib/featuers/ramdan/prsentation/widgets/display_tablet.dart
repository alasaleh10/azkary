import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/ramdan/prsentation/ramadan_cuibt/ramadan_cubit.dart';
import 'package:azkary/featuers/ramdan/prsentation/widgets/ramadan_display_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RamdanDisplayTablet extends StatelessWidget {
  const RamdanDisplayTablet({super.key});

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
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * .16, vertical: 10),
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
