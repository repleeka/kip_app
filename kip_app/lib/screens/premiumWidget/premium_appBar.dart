import 'package:flutter/material.dart';
import 'package:kip_app/shared/premiumWidgetConstants.dart';
import 'package:kip_app/shared/superScriptText.dart';

PreferredSizeWidget appBarPremium(BuildContext context) {
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
    backgroundColor: appBarColorPremium,
    elevation: 0.0,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: horizontalGradientPremium,
      ),
    ),

    ///[automaticallyImplyLeading: false]-> this will hide the hamburger icons
    ///from the appBar or the sliverAppBar if both are implemented.
    ///here it is not required. Why?
    // automaticallyImplyLeading: false,

    ///From [superScriptText cutosm widget class]
    ///for superscript and subscript of texts
    title: Center(
      child: SupText(
        text: "Kip",
        textStyle: TextStyle(
          fontSize: 30,
          fontFamily: "Espera",
          fontWeight: FontWeight.bold,
        ),
        superText: "premium",
        superStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      padding: EdgeInsets.all(0.0),
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
