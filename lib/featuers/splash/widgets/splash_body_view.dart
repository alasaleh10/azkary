import 'package:azkary/core/constrans/app_images.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/constrans/style.dart';
import 'package:azkary/core/routers/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacementNamed(AppRouters.homeView);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          SvgPicture.asset(Assets.imagesMosuq, height: 100),
          const SizedBox(height: 20),
          Text(
            'أذكــاري',
            style: AppStyls.styleBold25(context),
          ),
          const Expanded(child: SizedBox()),
          const CircularProgressIndicator(color: AppColors.kPrimiryColor3),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
