import 'package:flutter/material.dart';
import 'package:kip_app/screens/authenticate/toggleFormsWidget.dart';
// import 'package:kip_app/screens/homeWidget/drawer.dart';
// import 'package:kip_app/screens/homeWidget/home.dart';
// import 'package:kip_app/screens/premiumWidget/premium_drawer.dart';
// import 'package:kip_app/screens/premiumWidget/premium_home.dart';

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
        primarySwatch: Colors.teal,
        fontFamily: 'Espera',
      ),

      ///here the home: property will have Wrapper class as it will choose between
      ///Authentication and The main UI of the app.
      ///
      home: Scaffold(
        // drawer: DrawerWidget(),
        // drawer: DrawerWidgetPremium(),
        body: ToggleForms(),
        // body: Home(),
        // body: PremiumHome(),
      ),
    );
  }
}
