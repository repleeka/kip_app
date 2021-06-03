import 'package:flutter/material.dart';
import 'package:kip_app/screens/premiumWidget/premium_appBar.dart';
import 'package:kip_app/screens/premiumWidget/premium_sliverAppBar.dart';
import 'package:kip_app/shared/premiumWidgetConstants.dart';

///this class will be visible only if the login or registeration is done.

class PremiumHome extends StatefulWidget with PreferredSizeWidget {
  @override
  _PremiumHomeState createState() => _PremiumHomeState();

  @override

  ///a size whose height is the sum of [toolbarHeight] and the
  ///[bootm] widget's preferred height
  ///[Scaffold] uses this size to set its app bar's height
  Size get preferredSize => AppBar().preferredSize;
}

class _PremiumHomeState extends State<PremiumHome>
    with SingleTickerProviderStateMixin {
  ///[Home widget]=>with sliverAppBar.
  ///TODO:This class will contain LogOut button at the top.
  ///
  ///
  ///[controllers] for TabBar and ScrollView
  ///[late] keyword-> By declaring a non-nullable late variable,
  ///we promise that it will be non-null at runtime,
  ///and Dart helps us with some compile-time guarantees.
  ///
  late TabController _tabController;
  late ScrollController _scrollController;
  int _selectedIndex = 1;

  /// Doing so will complain about the non-nullable field.
  /// Since using sound-null safety in new Dart version 2.13;

  @override
  void initState() {
    super.initState();

    /// [{TickerProvider vsync}] -> creates an object that manages the state required
    /// by the [TabBar] and the [TabBarView]
    ///initialIndex sets the default tab to be opened.
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: _selectedIndex);

    /// creates a controller for scrollable widget.
    _scrollController = ScrollController();

    ///[addListeners]->This will allow the on swipe actions from tabBarview
    ///to be heard from in the tabbar.
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      print("$_selectedIndex Tab selected");
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double _extendedHeight = kToolbarHeight * 4 - 34;
    final EdgeInsets mainPadding = const EdgeInsets.all(0.0);

    return Stack(
      children: [
        Container(
          ///For the gradient color of whole app background.
          decoration: BoxDecoration(
            gradient: verticalGradientPremium,
          ),
        ),
        Container(
          padding: mainPadding,
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                sliverAppBarPremium(
                    isScrolled, _selectedIndex, _tabController, _extendedHeight)
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  // primary: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 20, left: 20),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Community",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  // primary: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 20, left: 20),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  // primary: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 20, left: 20),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "News",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          ///[the Actual AppBar]
          ///this is the actual appbar that users will see.
          ///The SliverAppBar above will slide the TabBar underneath this appBar
          ///by using SafeArea()
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            color: Colors.transparent,
            child: SafeArea(
              top: false,
              child: appBarPremium(context),
            ),
          ),
        ),
      ],
    );
  }
}
