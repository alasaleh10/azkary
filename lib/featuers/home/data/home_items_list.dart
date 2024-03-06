import 'package:azkary/core/routers/app_routers.dart';
import 'package:azkary/featuers/home/data/home_model.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

List<HomeModel> homeItems = [
  HomeModel('الأذكــار', AppRouters.azkarView, FlutterIslamicIcons.allah99),
  HomeModel(
      'اســلامـيـة', AppRouters.islamiaahView, FlutterIslamicIcons.community),
  HomeModel('السـيرة النـبـويـة', AppRouters.serahhView,
      FlutterIslamicIcons.community),
  HomeModel('قــصص اســلاميــة', AppRouters.qussasView,
      FlutterIslamicIcons.community),
  HomeModel('رمــضـان', AppRouters.ramadanView, FlutterIslamicIcons.ramadan),
  HomeModel('أدعــية', AppRouters.adeaaView, FlutterIslamicIcons.community),
  HomeModel('الـحــج', AppRouters.hajjView, FlutterIslamicIcons.kaaba),
  HomeModel('أحــاديــث', AppRouters.ahadeethView, FlutterIslamicIcons.kaaba),
];
