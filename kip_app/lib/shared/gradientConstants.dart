import 'package:flutter/material.dart';

///[Color gradients]
final Gradient verticalGradient = LinearGradient(
  colors: [
    Colors.tealAccent[400]!,
    Colors.cyan[600]!,
  ],
  begin: FractionalOffset(0.0, 0.0),
  end: FractionalOffset(0.0, 1.0),
  stops: [-1.0, 1.0],
  tileMode: TileMode.clamp,
);
