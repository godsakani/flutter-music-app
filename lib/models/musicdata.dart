import 'music.dart';

class MusicBank {
  final List<Music> musicdata = [
    Music(
        title: "Uptown Funk",
        singer: "One Republic",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
        image:
            "https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows8_5ea7d4f04e41e.jpeg"),
    Music(
      title: "Black Space",
      singer: "Sia",
      url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
      image:
          "https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows10_5ea7d51d28f24.jpeg",
    ),
    Music(
      title: "Shake it off",
      singer: "Coldplay",
      url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3",
      image:
          "https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows2_5ea7d47403432.jpeg",
    ),
    Music(
        title: "Lean On",
        singer: "T. Schürger",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3",
        image:
            "https://i.pinimg.com/originals/ea/60/26/ea60268f4374e8840c4529ee1462fa38.jpg"),
    Music(
        title: "Sugar",
        singer: "Adele",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3",
        image:
            "https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows7_5ea7d4db364a2.jpeg"),
    Music(
        title: "Believer",
        singer: "Ed Sheeran",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3",
        image:
            "https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows6_5ea7d4c7225c1.jpeg"),
    Music(
        title: "Stressed out",
        singer: "Mark Ronson",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3",
        image:
            "https://i.pinimg.com/originals/7c/a1/08/7ca1080bde6228e9fb8460915d36efdd.jpg"),
    Music(
        title: "Girls Like You",
        singer: "Maroon 5",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3",
        image:
            "https://i.pinimg.com/originals/1b/b8/55/1bb8552249faa2f89ffa0d762d87088d.jpg"),
    Music(
        title: "Let her go",
        singer: "Passenger",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3",
        image:
            "https://64.media.tumblr.com/5b7c0f14e4e50922ccc024573078db42/15bda826b481de6f-5a/s1280x1920/b26b182f789ef7bb7be15b037e2e687b0fbc437d.jpg"),
    Music(
        title: "Roar",
        singer: "Katy Perry",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-10.mp3",
        image:
            "https://cdn2.stylecraze.com/wp-content/uploads/2013/11/Jesus-On-Her-Wrist.jpg.webp"),
  ];

  List getList() {
    return musicdata;
  }
}
