import 'package:flutter/material.dart';

///[formConstants.dart] This file will contain all the constants that will be used
///in this app.
///

///[TextInputDecoration Constant]
///
///
///[cursorColor]
final cursorColor = Colors.white;

///Decoration constant for the [FormFields]
final textInputDecorationForSignUpForm = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.grey[400],
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
);
final textInputDecorationForSignInForm = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.teal,
    ),
  ),
);
