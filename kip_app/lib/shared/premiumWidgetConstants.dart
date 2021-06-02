import 'package:flutter/material.dart';

///[Premium Border Radius Constants]
const double tabRadius = 25.0;
const Color selectedTabLabelColorPremium = Color(0xFFEF90A8);
const Color tabBgColorPremium = Colors.white;
const Color unSelectedTabLabelColoPremium = Colors.white;
const Color appBarColorPremium = Color(0xFFF59496);

///[Premium Border Radius Constants]
const BorderRadiusGeometry allRadius =
    BorderRadius.all(Radius.circular(tabRadius));

///[Premium Gradient Color Constants]
final Gradient verticalGradientPremium = LinearGradient(
  ///will be used in app drawer
  colors: [
    Color(0xFFF59496),
    Color(0xFFE287CD),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  tileMode: TileMode.clamp,
);
final Gradient horizontalGradientPremium = LinearGradient(
  ///will be used in whole app
  colors: [
    Color(0xFFF59496),
    Color(0xFFE287CD),
  ],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  tileMode: TileMode.clamp,
);
