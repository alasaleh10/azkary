import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/qussass_cuibt/qussass_cubit.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/widgets/display_qussass_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayQussasMobile extends StatelessWidget {
  const DisplayQussasMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QussassCubit, QussassState>(
      builder: (context, state) {
        if (state is QussassSucsess) {
          return ListView.builder(
            itemCount: state.qussas.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: DisplayTitleQussassContiner(
                    qussassModel: state.qussas[index]),
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
