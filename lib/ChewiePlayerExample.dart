import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewiePlayerEx extends StatefulWidget {
  const ChewiePlayerEx({super.key});

  @override
  State<ChewiePlayerEx> createState() => _ChewiePlayerExState();
}

class _ChewiePlayerExState extends State<ChewiePlayerEx> {
  VideoPlayerController videoPlayerController = VideoPlayerController.network(
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
  late ChewieController controller;
  @override
  void initState() {
    controller = ChewieController(
      videoPlayerController: videoPlayerController,
      autoInitialize: true,
      autoPlay: false,
      zoomAndPan: true,
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chewie Player"),
      ),
      body: Chewie(controller: controller),
    );
  }
}
