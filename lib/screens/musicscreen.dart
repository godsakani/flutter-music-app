import 'package:flutter/material.dart';
import 'package:music/models/musicdata.dart';
import 'package:music/screens/playerScreen.dart';
import 'package:music/utilities/constant.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  MusicBank musicBank = MusicBank();
  late List music;

  @override
  void initState() {
    music = musicBank.getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Music 237'),
        centerTitle: false,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: music.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerSCreen(
                        musics: music[index],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            music[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            music[index].title,
                            style: kMusicTitleText,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            music[index].singer,
                            style: kMusicSingerText,
                          ),
                        ],
                      ),
                      Spacer(),
                      const Icon(
                        Icons.play_circle,
                        color: Colors.red,
                        size: 35.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
