import 'package:flutter/material.dart';
import 'package:kip_app/shared/premiumWidgetConstants.dart';

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
      hintStyle: TextStyle(
        color: selectedTabLabelColorPremium,
        fontFamily: 'Segoe UI',
      ),
      contentPadding: EdgeInsets.all(12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget sliverAppBarPremium(bool isScrolled, int selectedIndex,
    TabController tabController, double extendedHeight) {
  /// [bool forceElevated]-> Whether to show the shadow appropriate for the [elevation]
  /// even if the content is not scrolled under the [AppBar].
  /// Defaults to false, meaning that the [elevation] is only
  ///  applied when the [AppBar] is being displayed over content that is scrolled under it.
  /// When set to true, the [elevation] is applied regardless.
  /// Ignored when [elevation] is zero.

  return SliverAppBar(
    ///automaticallyImplyLeading: false,-> this will hide the hamburger icons
    ///from the appBar or the sliverAppBar if both are implemented.
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    floating: true,
    snap: true,
    pinned: false,
    elevation: 0.0,
    centerTitle: true,
    expandedHeight: extendedHeight,
    bottom: PreferredSize(
      preferredSize: Size(double.infinity, kToolbarHeight),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: TabBar(
          controller: tabController,
          labelColor: selectedTabLabelColorPremium,
          labelStyle: TextStyle(fontSize: 16.0, fontFamily: 'Segoe UI'),
          unselectedLabelStyle: TextStyle(fontSize: 12.0),
          unselectedLabelColor: unSelectedTabLabelColoPremium,
          indicator: BoxDecoration(
            color: tabBgColorPremium,
            borderRadius: allRadius,
          ),
          tabs: [
            Tab(text: "Community"),
            Tab(text: "Home"),
            Tab(text: "News"),
          ],
        ),
      ),
    ),
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
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
