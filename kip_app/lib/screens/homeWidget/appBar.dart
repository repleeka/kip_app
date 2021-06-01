import 'package:flutter/material.dart';

PreferredSizeWidget appBar(BuildContext context) {
  ///[the Actual AppBar]
  ///this is the actual appbar that users will see.
  ///The SliverAppBar above will slide the TabBar underneath this appBar
  ///by using SafeArea()
  // return AppBar(
  ///[OnTop AppBar]
  ///This appBar is on top of the SliverAppBar.
  return AppBar(
    ///[OnTop AppBar]
    ///This appBar is on top of the SliverAppBar.
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Text(
      "Kip App",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: kToolbarHeight * 0.5,
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      padding: EdgeInsets.all(0.0),
      // icon: Icon(
      //   Icons.account_circle_rounded,
      //   size: kToolbarHeight * 0.7,
      // ),
      icon: Image(
        color: Colors.white,
        image: AssetImage("lib/assets/image/kiplogo02.png"),
        height: kToolbarHeight * 0.7,
        width: kToolbarHeight * 0.7,
      ),
      onPressed: () => Scaffold.of(context).openDrawer(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert_sharp),
      )
    ],
  );
}
