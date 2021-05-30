import 'package:flutter/material.dart';

class Demo extends StatefulWidget with PreferredSizeWidget {
  @override
  _DemoState createState() => _DemoState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _DemoState extends State<Demo> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      print("Current Index: $_selectedIndex");
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: [
            Pages(pageName: "Page 0"),
            Pages(pageName: "Page 1"),
            Pages(pageName: "Page 2"),
          ],
        ),
        appBar: AppBar(
          elevation: 0.0,
          bottom: TabBar(
            labelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: _selectedIndex == 0
                  ? BorderRadius.only(topRight: Radius.circular(10.0))
                  : _selectedIndex == 1
                      ? BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))
                      : BorderRadius.only(topLeft: Radius.circular(10.0)),
            ),
            controller: _tabController,
            tabs: [
              Tab(text: "Tab0"),
              Tab(text: "Tab1"),
              Tab(text: "Tab2"),
            ],
          ),
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  late final String pageName;
  Pages({required this.pageName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          pageName,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }
}
