import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  final Function? toggleView;
  RegisterWidget({this.toggleView});
  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold());
  }
}
