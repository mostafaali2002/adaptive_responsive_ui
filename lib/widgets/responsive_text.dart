import 'package:flutter/material.dart';

double getResponsiveFont(BuildContext context, {required double fontSize}) {
  double scalFactor = getScale(context);
  double responsiveSize = fontSize * scalFactor;
  double lowLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowLimit, upperLimit);
}

double getScale(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400; //400---> MobileLayout
  } else if (width < 900) {
    return width / 700; //700-->TabletLayout
  } else {
    return width / 1000;
  }
}
