import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

///`MyVideoPlayer()` is a custom widget which implements `Chewie()` and `video_palyer` plugin
///
class MyVideoPlayer extends StatefulWidget {
  ///`VideoPlayerController()` this video controller is from the `video_player` plugin
  ///or class and is a low level video player for flutter.
  ///`Chewie` videoplayer is made on top the `video_player`.
  final VideoPlayerController videoPlayerController;
  final bool autoplay;
  final bool loop;
  MyVideoPlayer({
    required this.videoPlayerController,
    this.autoplay = false,
    this.loop = false,
  });
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  ///defining controller for `Chewie()`
  late ChewieController _chewieController;
  @override
  void initState() {
    _chewieController = ChewieController(
      ///passing the properties of the `video_player` through `ChewieController()` .
      ///
      videoPlayerController: widget.videoPlayerController,
      autoPlay: widget.autoplay,
      looping: widget.loop,
      aspectRatio: 16 / 9,
      allowPlaybackSpeedChanging: true,
      autoInitialize: true,
      errorBuilder: (context, errorMessage) => Center(
        child: Text(errorMessage),
      ),
    );
    _chewieController.setVolume(10.0);
    super.initState();
  }

  @override
  void dispose() {
    ///disposing the controllers.
    _chewieController.dispose();
    widget.videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // bool isTapped = false;
    return Center(
      child: Container(
        // padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Chewie(controller: _chewieController),
      ),
    );
  }
}
