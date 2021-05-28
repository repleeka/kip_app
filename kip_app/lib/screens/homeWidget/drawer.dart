import 'package:flutter/material.dart';
import 'package:kip_app/shared/gradientConstants.dart';

class DrawerWidget extends StatelessWidget {
  final double iconSize = 40;
  final double fontSize = 20;
  static const double paddingUnit = 8.0;
  final MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  final double height = 10;
  final double width = 30;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: verticalGradient,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              ///[Drawer's Column]
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 32.0),

                  ///[Profile's column]
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child:
                            Icon(Icons.person, color: Colors.black, size: 60),
                      ),
                      SizedBox(height: 20),
                      Text("Username",
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("My Profile tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.person_outline_sharp,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "My Profile",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: fontSize,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("My Courses tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.menu_book_outlined,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "My Courses",
                                style: TextStyle(
                                    color: Colors.white, fontSize: fontSize),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("Premium tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.control_camera_sharp,
                                color: Colors.amber[600],
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "Premium",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: fontSize + 5),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("Statistics tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.bar_chart_sharp,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "Statistics",
                                style: TextStyle(
                                    color: Colors.white, fontSize: fontSize),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("History tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.history,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "History",
                                style: TextStyle(
                                    color: Colors.white, fontSize: fontSize),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("Notifications tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.notifications_active_outlined,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "Notifications",
                                style: TextStyle(
                                    color: Colors.white, fontSize: fontSize),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height),
                      Padding(
                        padding: const EdgeInsets.all(paddingUnit),
                        child: GestureDetector(
                          onTap: () => print("Settings tapped"),
                          child: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Icon(
                                Icons.settings_outlined,
                                color: Colors.white,
                                size: iconSize,
                              ),
                              SizedBox(width: width),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: fontSize,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
