import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/featuers/islamiiah/prsentation/display_islamiaa_cuibt/display_islamiaa_cubit.dart';
import 'package:azkary/featuers/islamiiah/views/widgets/islamiaa_items_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayIslamiaaMobileLayout extends StatelessWidget {
  const DisplayIslamiaaMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayIslamiaaCubit, DisplayIslamiaaState>(
      builder: (context, state) {
        if (state is DisplayIslamiaaSucsess) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: IslamiaaItemsContiner(
                  items: state.items[index],
                ),
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
