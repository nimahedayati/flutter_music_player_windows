// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArtistModel {
  final String name;
  final String avatar;
  final String cover;
  final List<MusicModel> musics;

  ArtistModel({
    required this.name,
    required this.avatar,
    required this.cover,
    required this.musics,
  });

  static ArtistModel getFake() {
    return ArtistModel(
        name: 'The Weekend',
        avatar: 'https://www.theweeknd.com/files/2021/10/photo_202110_07_GENERAL-BRIANZIFF_THEWEEKND_800_1-WITH-BEAUTY-crop-1.jpeg',
        cover:
            'https://gray-week-prod.cdn.arcpublishing.com/resizer/nWKSdwQxl3UhlHZ4vhtJMVSsCY0=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/GBLEZHJM5VDZPOE5HOI672L2KM.jpg',
        musics: [
          MusicModel(
              name: "Save Your Tears",
              artist: "The Weekend",
              cover:
                  "https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Save_Your_Tears_Remix_-_The_Weeknd_and_Ariana_Grande.png/220px-Save_Your_Tears_Remix_-_The_Weeknd_and_Ariana_Grande.png",
              duration: const Duration(minutes: 3, seconds: 32)),
          MusicModel(
              name: "Blinding Lights",
              artist: "The Weekend",
              cover: "https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png",
              duration: const Duration(minutes: 2, seconds: 48)),
          MusicModel(
              name: "Starboy",
              artist: "The Weekend",
              cover: "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
              duration: const Duration(minutes: 5, seconds: 04)),
          MusicModel(
              name: "Reminder",
              artist: "The Weekend",
              cover: "https://upload.wikimedia.org/wikipedia/en/5/54/The_Weeknd_-_Reminder_%28Remix%29.png",
              duration: const Duration(minutes: 3, seconds: 46)),
          MusicModel(
              name: "After Hours",
              artist: "The Weekend",
              cover: "https://upload.wikimedia.org/wikipedia/en/c/c1/The_Weeknd_-_After_Hours.png",
              duration: const Duration(minutes: 4, seconds: 11))
        ]);
  }
}

class MusicModel {
  final String name;
  final String artist;
  final String cover;

  final Duration duration;
  String get time {
    String twoDigitSeconds = duration.inSeconds.remainder(60).toString().padLeft(2, "0");
    return "${duration.inMinutes}:$twoDigitSeconds";
  }

  MusicModel({
    required this.name,
    required this.artist,
    required this.cover,
    required this.duration,
  });
}
