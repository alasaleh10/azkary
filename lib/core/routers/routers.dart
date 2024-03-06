import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/core/routers/pages_animation.dart';
import 'package:azkary/featuers/adeaa/prsentation/views/adeaa_view.dart';
import 'package:azkary/featuers/adeaa/prsentation/views/display_doaa.dart';
import 'package:azkary/featuers/ahadeth/prsentation/views/ahadeeth_display_view.dart';
import 'package:azkary/featuers/ahadeth/prsentation/views/ahadeeth_view.dart';
import 'package:azkary/featuers/azkar/prsentation/views/screens/azkar_view.dart';
import 'package:azkary/featuers/azkar/prsentation/views/screens/display_azkar_view.dart';
import 'package:azkary/featuers/hajj/data/hajj_model.dart';
import 'package:azkary/featuers/hajj/prsentation/views/display_hajj_items.dart';
import 'package:azkary/featuers/hajj/prsentation/views/display_hajj_title.dart';
import 'package:azkary/featuers/hajj/prsentation/views/hajj_view.dart';
import 'package:azkary/featuers/home/prsentation/views/home_view.dart';
import 'package:azkary/featuers/islamiiah/views/screens/display_islamiaa_view.dart';
import 'package:azkary/featuers/islamiiah/views/screens/islamiaah_view.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussass_model.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/screens/display_qussah_view.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/screens/qussas_view.dart';
import 'package:azkary/featuers/qussas_islamia/prsentation/views/screens/qussass_display_title.dart';
import 'package:azkary/featuers/ramdan/data/ramadan_model.dart';
import 'package:azkary/featuers/ramdan/prsentation/views/display_ramdan_items.dart';
import 'package:azkary/featuers/ramdan/prsentation/views/ramdan_display_view.dart';
import 'package:azkary/featuers/ramdan/prsentation/views/ramdan_view.dart';
import 'package:azkary/featuers/searah_nuboiaa/data/serah_model_items.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/screens/display_items.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/screens/display_serah_view.dart';
import 'package:azkary/featuers/searah_nuboiaa/prsentation/views/screens/searah_nboiaa.dart';
import 'package:azkary/featuers/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Routers {
  static final routers = GoRouter(routes: [
    GoRoute(
      path: AppRouters.splash,
      pageBuilder: (context, state) =>
          pageAnimation(page: const SplashScreenView()),
    ),
    GoRoute(
      path: '/${AppRouters.homeView}',
      name: AppRouters.homeView,
      pageBuilder: (context, state) => pageAnimation(page: const HomeView()),
    ),
    GoRoute(
      path: '/${AppRouters.azkarView}',
      name: AppRouters.azkarView,
      pageBuilder: (context, state) => pageAnimation(
          page: AzkarView(
        title: state.extra as String,
      )),
    ),
    GoRoute(
      path: '/${AppRouters.disPlayAzkarView}',
      name: AppRouters.disPlayAzkarView,
      pageBuilder: (context, state) => pageAnimation(
          page: DisPlayAzkarView(
        data: state.extra as List,
      )),
    ),
    GoRoute(
      path: '/${AppRouters.islamiaahView}',
      name: AppRouters.islamiaahView,
      pageBuilder: (context, state) => pageAnimation(
          page: IslamiaahView(
        title: state.extra as String,
      )),
    ),
    GoRoute(
      path: '/${AppRouters.displayIslamiaa}',
      name: AppRouters.displayIslamiaa,
      pageBuilder: (context, state) =>
          pageAnimation(page: DisplayIslamiaaView(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.serahhView}',
      name: AppRouters.serahhView,
      pageBuilder: (context, state) =>
          pageAnimation(page: SerahNaboiaaView(title: state.extra as String)),
    ),
    GoRoute(
      path: '/${AppRouters.displaySerah}',
      name: AppRouters.displaySerah,
      pageBuilder: (context, state) =>
          pageAnimation(page: DisplaySerahView(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.displaySerahItems}',
      name: AppRouters.displaySerahItems,
      pageBuilder: (context, state) => pageAnimation(
          page: DisplaySerahItems(items: state.extra as SerahModelItems)),
    ),
    GoRoute(
      path: '/${AppRouters.qussasView}',
      name: AppRouters.qussasView,
      pageBuilder: (context, state) =>
          pageAnimation(page: QussasView(title: state.extra as String)),
    ),
    GoRoute(
      path: '/${AppRouters.qussassDisplayTitle}',
      name: AppRouters.qussassDisplayTitle,
      pageBuilder: (context, state) =>
          pageAnimation(page: QussassDisplayTitle(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.displayQussahView}',
      name: AppRouters.displayQussahView,
      pageBuilder: (context, state) => pageAnimation(
          page: DisplayQussahView(qussassModel: state.extra as QussassModel)),
    ),
    GoRoute(
      path: '/${AppRouters.ramadanView}',
      name: AppRouters.ramadanView,
      pageBuilder: (context, state) =>
          pageAnimation(page: RamdanView(title: state.extra as String)),
    ),
    GoRoute(
      path: '/${AppRouters.ramadandisplayView}',
      name: AppRouters.ramadandisplayView,
      pageBuilder: (context, state) =>
          pageAnimation(page: RamdanDisplayView(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.ramadandisplayItems}',
      name: AppRouters.ramadandisplayItems,
      pageBuilder: (context, state) => pageAnimation(
          page: DisplayRamadanItems(ramadanModel: state.extra as RamadanModel)),
    ),
    GoRoute(
      path: '/${AppRouters.adeaaView}',
      name: AppRouters.adeaaView,
      pageBuilder: (context, state) =>
          pageAnimation(page: AdeaaView(title: state.extra as String)),
    ),
    GoRoute(
      path: '/${AppRouters.displayDoaa}',
      name: AppRouters.displayDoaa,
      pageBuilder: (context, state) =>
          pageAnimation(page: DisplayDoaa(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.hajjView}',
      name: AppRouters.hajjView,
      pageBuilder: (context, state) =>
          pageAnimation(page: HajjView(title: state.extra as String)),
    ),
    GoRoute(
      path: '/${AppRouters.displayHajjTitle}',
      name: AppRouters.displayHajjTitle,
      pageBuilder: (context, state) =>
          pageAnimation(page: DisplayHajjTitle(data: state.extra as List)),
    ),
    GoRoute(
      path: '/${AppRouters.displayHajjItems}',
      name: AppRouters.displayHajjItems,
      pageBuilder: (context, state) => pageAnimation(
          page: DisplayHajjItems(hajjModel: state.extra as HajjModel)),
    ),
    GoRoute(
      path: '/${AppRouters.ahadeethView}',
      name: AppRouters.ahadeethView,
      pageBuilder: (context, state) =>
          pageAnimation(page: AhadeethView(title: state.extra as String)),
    ),
     GoRoute(
      path: '/${AppRouters.ahadeethDisplay}',
      name: AppRouters.ahadeethDisplay,
      pageBuilder: (context, state) =>
          pageAnimation(page: AhadeethDisplayView(data: state.extra as List)),
    ),
  ]);
}
