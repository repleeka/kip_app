import 'package:flutter/material.dart';

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
            return [
              SliverAppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent,
                        Colors.teal,
                      ],
                    ),
                  ),
                ),

                /// [bool forceElevated]-> Whether to show the shadow appropriate for the [elevation]
                /// even if the content is not scrolled under the [AppBar].
                /// Defaults to false, meaning that the [elevation] is only
                ///  applied when the [AppBar] is being displayed over content that is scrolled under it.
                /// When set to true, the [elevation] is applied regardless.
                /// Ignored when [elevation] is zero.
                backgroundColor: Colors.teal,
                forceElevated: isScrolled,
                floating: true,
                pinned: false,
                snap: true,
                bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4.0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    ///[Tab]->Creates a material design [TabBar] tab.
                    /// At least one of [text], [icon], and [child] must be
                    /// non-null. The [text] and [child] arguments must not
                    /// be used at the same time. The [iconMargin] is only
                    /// useful when [icon] and either one of [text] or
                    /// [child] is non-null.
                    Tab(
                      text: "Community",
                      // child: Container(color: Colors.teal[50]),
                    ),
                    Tab(
                      text: "Home",
                      // child: Container(color: Colors.teal[50]),
                    ),
                    Tab(
                      text: "News",
                      // child: Container(color: Colors.teal[50]),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            physics: BouncingScrollPhysics(),
            children: [
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text("Text"),
                  ),
                ),
              ),
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text("Text"),
                  ),
                ),
              ),
              Scaffold(
                body: Container(
                  color: Colors.teal[100],
                  // decoration: BoxDecoration(
                  //   gradient: LinearGradient(
                  //     colors: [
                  //       Colors.teal,
                  //       Colors.red,
                  //     ],
                  //   ),
                  // ),
                  child: Center(
                    child: Text("Text"),
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
              child: AppBar(
                ///[OnTop AppBar]
                ///This appBar is on top of the SliverAppBar.
                automaticallyImplyLeading: true,
                elevation: 0,
                backgroundColor: Colors.teal,
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                actions: [
                  ///[Actions]
                  IconButton(
                    ///[Star IconButton]
                    icon: Icon(Icons.grade_outlined),
                    onPressed: () => print("Icon pressed"),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
