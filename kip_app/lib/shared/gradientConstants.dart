import 'package:flutter/material.dart';

///[Color gradients]
final Shader kipTextLogoGradientColor = LinearGradient(
  colors: <Color>[
    Color(0xFF00D2A1),
    Colors.teal,
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
final Gradient verticalGradient = LinearGradient(
  colors: [
    // Colors.tealAccent[400]!,
    // Colors.cyan[600]!,
    Color(0xFF00D2A1),
    Color(0xFF00B9D6),
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
