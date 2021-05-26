import 'package:flutter/material.dart';
import 'package:kip_app/screens/authenticate/toggleFormsWidget.dart';
import 'package:kip_app/screens/homeWidget.dart/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ToggleForms(),
      home: Home(),
    );
  }
}
