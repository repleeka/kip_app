import 'package:flutter/material.dart';

///[A container for the appBar variable definition.]

const double tabRadius = 10.0;
const Color selectedTabLabelColor = Colors.teal;
final Color tabBgColor = Colors.teal[100]!;
const Color unSelectedTabLabelColor = Colors.white;
const Color tabBarBgColor = Colors.teal;

///[Border Radius Constants]
const BorderRadiusGeometry topRight =
    BorderRadius.only(topRight: Radius.circular(tabRadius));

const BorderRadiusGeometry topLeft =
    BorderRadius.only(topLeft: Radius.circular(tabRadius));
const BorderRadiusGeometry topLR = BorderRadius.only(
    topLeft: Radius.circular(tabRadius), topRight: Radius.circular(tabRadius));
