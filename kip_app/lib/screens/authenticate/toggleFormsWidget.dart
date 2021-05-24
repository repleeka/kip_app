import 'package:flutter/material.dart';

import 'forms/loginWidget.dart';
import 'forms/signupWidget.dart';

///This widget will toggle between the signIn and the SignUp form widgets.

class ToggleForms extends StatefulWidget {
  @override
  _ToggleFormsState createState() => _ToggleFormsState();
}

class _ToggleFormsState extends State<ToggleForms> {
  ///[toggleView] bool variable
  bool showSignIn = true;

  void toggleView() {
    ///This will toggle between the [signIn] and the [Register] forms
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginWidget(toggleView: toggleView);
    } else {
      return RegisterWidget(toggleView: toggleView);
    }
  }
}
