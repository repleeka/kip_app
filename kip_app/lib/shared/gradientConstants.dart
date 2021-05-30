import 'package:flutter/material.dart';

///[Color gradients]
final Gradient verticalGradient = LinearGradient(
  colors: [
    // Colors.tealAccent[400]!,
    // Colors.cyan[600]!,
    Color(0XFF00D2A1),
    Color(0XFF00B9D6),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  tileMode: TileMode.clamp,
);
final Gradient horizontalGradient = LinearGradient(
  colors: [
    Color(0XFF00D2A1),
    Color(0XFF00B9D6),
    // Color(0X00D2A0),
  ],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  tileMode: TileMode.clamp,
);
