import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class BetterPlayerEx extends StatefulWidget {
  const BetterPlayerEx({super.key});

  @override
  State<BetterPlayerEx> createState() => _BetterPlayerExState();
}

class _BetterPlayerExState extends State<BetterPlayerEx> {
  int forwardSkip = 10000, backwardSkip = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Better Player"),
        ),
        body: Center(
          child: Column(
            children: [
              BetterPlayer.network(
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                betterPlayerConfiguration: BetterPlayerConfiguration(
                    aspectRatio: 16 / 9,
                    autoPlay: false,
                    showPlaceholderUntilPlay: true,
                    controlsConfiguration: BetterPlayerControlsConfiguration(
                      forwardSkipTimeInMilliseconds: forwardSkip,
                      backwardSkipTimeInMilliseconds: backwardSkip,
                    ),
                    expandToFill: true,
                    overlay: const AnimatedOpacity(
                      duration: Duration(microseconds: 100),
                      opacity: 0.05,
                    )),
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Forward Skip Seconds",
                ),
                keyboardType: TextInputType.number,
                onChanged: (data) {
                  setState(() {
                    forwardSkip = int.parse(data) * 1000;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Backward Skip Seconds",
                ),
                keyboardType: TextInputType.number,
                onChanged: (data) {
                  setState(() {
                    backwardSkip = int.parse(data) * 1000;
                  });
                },
              )
            ],
          ),
        ));
  }
}
