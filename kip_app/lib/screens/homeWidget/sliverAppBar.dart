import 'package:flutter/material.dart';
import 'package:kip_app/shared/appBarConstants.dart';

import 'package:kip_app/shared/gradientConstants.dart';

Widget searchBar() {
  return TextField(
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
      filled: true,
      fillColor: Colors.white,
      hintText: "Search",
      contentPadding: EdgeInsets.all(12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget sliverAppBar(bool isScrolled, int selectedIndex,
    TabController tabController, double extendedHeight) {
  /// [bool forceElevated]-> Whether to show the shadow appropriate for the [elevation]
  /// even if the content is not scrolled under the [AppBar].
  /// Defaults to false, meaning that the [elevation] is only
  ///  applied when the [AppBar] is being displayed over content that is scrolled under it.
  /// When set to true, the [elevation] is applied regardless.
  /// Ignored when [elevation] is zero.

  return SliverAppBar(
    backgroundColor: Colors.transparent,
    floating: true,
    snap: true,
    pinned: false,
    elevation: 0.0,
    centerTitle: true,
    expandedHeight: extendedHeight,
    bottom: TabBar(
      controller: tabController,
      labelColor: selectedTabLabelColor,
      unselectedLabelColor: unSelectedTabLabelColor,
      indicator: BoxDecoration(
        color: tabBgColor,
        borderRadius: selectedIndex == 0
            ? topRight
            : selectedIndex == 1
                ? topLR
                : topLeft,
      ),
      tabs: [
        Tab(text: "Community"),
        Tab(text: "Home"),
        Tab(text: "News"),
      ],
    ),
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        decoration: BoxDecoration(
          gradient: horizontalGradient,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: searchBar(),
          ),
        ),
        height: extendedHeight / 4,
      ),
    ),
  );
}
