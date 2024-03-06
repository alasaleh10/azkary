import 'package:azkary/core/constrans/custom_loading.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:azkary/featuers/adeaa/prsentation/adeaa_cuibt/adeaa_cubit.dart';
import 'package:azkary/featuers/adeaa/prsentation/widgets/display_doaa_continer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayAdeaaTablet extends StatelessWidget {
  const DisplayAdeaaTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdeaaCubit, AdeaaState>(
      builder: (context, state) {
        if (state is AdeaaSucsess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.adeaa.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * .16, vertical: 10),
                child: DisplayDoaaContiner(
                  adeaaModel: state.adeaa[index],
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
