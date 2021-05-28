import 'package:flutter/material.dart';
import 'package:kip_app/screens/homeWidget/appBar.dart';
import 'package:kip_app/screens/homeWidget/sliverAppBar.dart';

///this class will be visible only if the login or registeration is done.

class Home extends StatefulWidget with PreferredSizeWidget {
  @override
  _HomeState createState() => _HomeState();

  @override

  ///a size whose height is the sum of [toolbarHeight] and the
  ///[bootm] widget's preferred height
  ///[Scaffold] uses this size to set its app bar's height
  Size get preferredSize => AppBar().preferredSize;
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);

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
    return Stack(
      children: [
        NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [sliverAppBar(isScrolled, _selectedIndex, _tabController)];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text(
                      "Text",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text(
                      "Text",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text(
                      "Text",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
            child: SafeArea(
              top: false,
              child: appBar(),
            ),
          ),
        ),
      ],
    );
  }
}
