import 'package:azkary/core/responsive_adaptive_helper/platform_type.dart';
import 'package:azkary/core/responsive_adaptive_helper/screen_size.dart';
import 'package:flutter/material.dart';

double getHorizntol(BuildContext context) {
  if (isMobile(context)) {
    return 10.0;
  } else if (isTablet(context)) {
    return screenWidth(context) * .16;
  } else {
    return screenWidth(context) * .2;
  }
}
