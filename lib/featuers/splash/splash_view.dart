import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/featuers/splash/widgets/splash_body_view.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kPrimiryColor2,
      body: SplashBodyView(),
    );
  }
}
