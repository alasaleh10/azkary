import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/routers/routers.dart';
import 'package:azkary/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const Azkary());
}

class Azkary extends StatelessWidget {
  const Azkary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kPrimiryColor3,
          appBarTheme: const AppBarTheme(
              shadowColor: Color.fromARGB(0, 168, 96, 96),
              backgroundColor: AppColors.kPrimiryColor2,
              elevation: 0)),
      debugShowCheckedModeBanner: false,
      routerConfig: Routers.routers,
    );
  }
}
