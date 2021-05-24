import 'package:flutter/material.dart';

///this class will be visible only if the login or registeration is done.

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ///This class will contain LogOut button at the top.
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold());
  }
}
