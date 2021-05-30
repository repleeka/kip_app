import 'package:flutter/material.dart';
// import 'package:kip_app/demo/demoSliverAppbar.dart';
// import 'package:kip_app/screens/authenticate/toggleFormsWidget.dart';
import 'package:kip_app/screens/homeWidget/drawer.dart';
import 'package:kip_app/screens/homeWidget/home.dart';

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

      ///here the home: property will have Wrapper class as it will choose between
      ///Authentication and The main UI of the app.
      ///
      home: Scaffold(
        drawer: DrawerWidget(),
        // body: ToggleForms(),
        body: Home(),
        // body: ABar(),
      ),
    );
  }
}
