import 'package:flutter/material.dart';
import 'package:kip_app/shared/appBarConstants.dart';

PreferredSizeWidget appBar() {
  ///[the Actual AppBar]
  ///this is the actual appbar that users will see.
  ///The SliverAppBar above will slide the TabBar underneath this appBar
  ///by using SafeArea()
  return AppBar(
    ///[OnTop AppBar]
    ///This appBar is on top of the SliverAppBar.
    automaticallyImplyLeading: true,
    elevation: 0,
    backgroundColor: tabBarBgColor,
    leading: Builder(
      builder: (context) => IconButton(
        //due to this method I will be able to change the Icon of the Drawer()
        icon: Icon(Icons.account_circle_outlined),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    centerTitle: true,
    title: Container(
      // the height of the container is the height of the textfield.
      /// [kToolbarHeight = 56.0];
      height: kToolbarHeight,
      padding: EdgeInsets.all(8.0),

      ///[Search TextField]
      ///
      child: TextField(
        ///FIXME: To pass the value from the inputkeyboard to showSearch()
        ///use [TextEditingController].
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        onChanged: (value) {
          ///[Search bar] Here
          //TODO: This will return a showSearch() async function,
          //which will be the original search bar.
          print(value);
        },
        decoration: InputDecoration(
          ///[InputDecoration]
          prefixIcon: Icon(Icons.search),
          isDense: true,
          contentPadding: EdgeInsets.all(12),
          filled: true,
          fillColor: Colors.white,
          hintText: "Search",
        ),
      ),
    ),
  );
}
