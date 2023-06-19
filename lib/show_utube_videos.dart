import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class UtubeScreen extends StatefulWidget {
  const UtubeScreen({super.key});

  @override
  State<UtubeScreen> createState() => _UtubeScreenState();
}

class _UtubeScreenState extends State<UtubeScreen> {
  YoutubePlayerController youtubePlayerController = YoutubePlayerController(
      initialVideoId: "1xipg02Wu8s",
      flags:
          const YoutubePlayerFlags(autoPlay: false, mute: false, loop: false));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show YouTube Videos'),
      ),
      body: Column(
        children: [YoutubePlayer(controller: youtubePlayerController)],
      ),
    );
  }
}
