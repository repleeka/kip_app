import 'package:flutter/material.dart';
import 'package:kip_app/shared/appBarConstants.dart';

Widget sliverAppBar(
    bool isScrolled, int selectedIndex, TabController tabController) {
  return SliverAppBar(
    /// [bool forceElevated]-> Whether to show the shadow appropriate for the [elevation]
    /// even if the content is not scrolled under the [AppBar].
    /// Defaults to false, meaning that the [elevation] is only
    ///  applied when the [AppBar] is being displayed over content that is scrolled under it.
    /// When set to true, the [elevation] is applied regardless.
    /// Ignored when [elevation] is zero.
    backgroundColor: tabBarBgColor,
    forceElevated: isScrolled,
    floating: true,
    pinned: false,
    snap: true,
    bottom: TabBar(
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
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        ///[Tab]->Creates a material design [TabBar] tab.
        /// At least one of [text], [icon], and [child] must be
        /// non-null. The [text] and [child] arguments must not
        /// be used at the same time. The [iconMargin] is only
        /// useful when [icon] and either one of [text] or
        /// [child] is non-null.
        Tab(text: "Community"),
        Tab(text: "Home"),
        Tab(text: "News"),
      ],
    ),
  );
}