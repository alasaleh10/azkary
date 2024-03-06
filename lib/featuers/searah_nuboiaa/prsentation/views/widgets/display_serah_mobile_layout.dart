import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/manger/serah_cuibt/serah_cubit.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/widgets/serah_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerahDisplayMobileLayout extends StatelessWidget {
  const SerahDisplayMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerahCubit, SerahState>(
      builder: (context, state) {
        if (state is SerahSucsess) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: SerahItems(items: state.items[index]),
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
