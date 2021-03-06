import 'package:flutter/material.dart';
// import 'package:kip_app/screens/authenticate/toggleFormsWidget.dart';
import 'package:kip_app/screens/homeWidget/drawer.dart';
import 'package:kip_app/screens/homeWidget/home.dart';
// import 'package:kip_app/shared/videoPlayer/my_video_player.dart';
// import 'package:video_player/video_player.dart';

// import 'package:kip_app/screens/premiumWidget/premium_drawer.dart';
// import 'package:kip_app/screens/premiumWidget/premium_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Espera',
      ),

      ///here the home: property will have Wrapper class as it will choose between
      ///Authentication and The main UI of the app.
      ///
      home: Scaffold(
        ///for [permium] screens enable the following widgets:
        // body: PremiumHome(),
        // drawer: DrawerWidgetPremium(),

        ///for the [Login/Register] screens enable the follwing widget:
        // body: ToggleForms(),

        ///for [normal (non-premium screens)] enable the following widgets:
        body: Home(),
        drawer: DrawerWidget(),

        ///[Testing Area for the Video player widget]
        // appBar: AppBar(
        //   title: Text('Video Player'),
        // ),
        // body: MyVideoPlayer(
        //   videoPlayerController: VideoPlayerController.asset(
        //     'lib/videos/01.mp4',
        //   ),
        //   autoplay: false,
        //   loop: true,
        //   // videoPlayerController: VideoPlayerController.network(
        //   // 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
        // ),
      ),
    );
  }
}
