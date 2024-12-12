import 'package:flutter/foundation.dart';

double getResponsiveFont({required double fontSize}) {
  double scalFactor = getScale();
  double responsiveSize = fontSize * scalFactor;
  double lowLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowLimit, upperLimit);
}

double getScale() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var deviceRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / deviceRatio;
  if (width < 800) {
    return width / 550; //400---> MobileLayout
  } else if (width < 1200) {
    return width / 1000; //700-->TabletLayout
  } else {
    return width / 1500;
  }
}
