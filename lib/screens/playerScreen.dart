import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music/utilities/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/music.dart';

class PlayerSCreen extends StatefulWidget {
  const PlayerSCreen({Key? key, required this.musics}) : super(key: key);
  final Music musics;
  @override
  State<PlayerSCreen> createState() => _PlayerSCreenState();
}

class _PlayerSCreenState extends State<PlayerSCreen> {
  bool isPlaying = false;
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    audioPlayer.onPlayerStateChanged.listen((audioState) {
      setState(() {
        isPlaying = audioState == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((audioDuration) {
      setState(() {
        duration = audioDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((audioPosition) {
      setState(() {
        position = audioPosition;
      });
    });
    super.initState();
  }

  getNext() async {
    await audioPlayer.play(UrlSource(widget.musics.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.musics.title),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 270.0,
                    width: 270.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        widget.musics.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    widget.musics.title,
                    style: kMusicTitleText,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.musics.singer,
                    style: kMusicSingerText,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          await audioPlayer.play(UrlSource(widget.musics.url));
                        },
                        icon: const Icon(
                          FontAwesomeIcons.backwardStep,
                          color: Colors.red,
                        ),
                        iconSize: 25,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      IconButton(
                        onPressed: () async {
                          if (isPlaying == true) {
                            await audioPlayer.pause();
                          } else {
                            await audioPlayer
                                .play(UrlSource(widget.musics.url));
                          }
                        },
                        icon: Icon(
                          isPlaying ? Icons.pause_circle : Icons.play_circle,
                          color: Colors.red,
                        ),
                        iconSize: 50,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      IconButton(
                        onPressed: () async {
                          await audioPlayer.play(UrlSource(widget.musics.url));
                        },
                        icon: const Icon(
                          FontAwesomeIcons.forwardStep,
                          color: Colors.red,
                        ),
                        iconSize: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
