import 'package:flutter/material.dart';
import 'package:new_project/BetterPlayerExample.dart';
import 'package:new_project/ChewiePlayerExample.dart';

void main() {
  runApp(const MaterialApp(home: Navigate()));
}

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Video Player Example")),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChewiePlayerEx()));
                },
                child: const Text("Chewie Player")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BetterPlayerEx()));
                },
                child: const Text("Better Player")),
          ]),
    );
  }
}
