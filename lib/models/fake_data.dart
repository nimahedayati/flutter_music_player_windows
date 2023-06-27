import 'package:flutter_music_player_windows/models/artist_model.dart';
import 'package:flutter_music_player_windows/models/banner_model.dart';

BannerModel bannerData = BannerModel(
  artist: 'Koorosh',
  cover: "assets/images/main_cover.jpg",
  description: "Top Male Artist | +100K Listeners",
);

MusicModel nowPLayingData = MusicModel(
  name: 'Extasy',
  artist: "Koorosh, Sijal, Sami Low & Raha",
  cover: "assets/images/now_playing_cover.jpg",
  duration: const Duration(minutes: 4, seconds: 20),
);

List<MusicModel> globalTop50Data = [
  MusicModel(
    name: 'OnlyFans (feat. Koorosh)',
    artist: "Isam",
    cover: "assets/images/onlyfans_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 57),
  ),
  MusicModel(
    name: 'RUNAWAY',
    artist: "Poobon",
    cover: "assets/images/runaway_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 18),
  ),
  MusicModel(
    name: '52Hz',
    artist: "Chvrsi",
    cover: "assets/images/52hz_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 57),
  ),
  MusicModel(
    name: 'Del',
    artist: "Sami Low, Raha & The Don",
    cover: "assets/images/del_cover.jpg",
    duration: const Duration(minutes: 3, seconds: 00),
  ),
  MusicModel(
    name: 'Nakhla',
    artist: "Sijal, Mehrad Hidden & Sepehr Khalse",
    cover: "assets/images/nakhla_cover.jpg",
    duration: const Duration(minutes: 4, seconds: 42),
  ),
  MusicModel(
    name: '3Tighe (feat. Farshid)',
    artist: "Erfan",
    cover: "assets/images/3tighe_cover.jpg",
    duration: const Duration(minutes: 4, seconds: 20),
  )
];

List<MusicModel> songsYouMightLikeData = [
  MusicModel(
    name: 'Range O',
    artist: "CatchyBeatz",
    cover: "assets/images/rangeo_cover.jpg",
    duration: const Duration(minutes: 3, seconds: 4),
  ),
  MusicModel(
    name: 'Zhen',
    artist: "021G",
    cover: "assets/images/zhen_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 59),
  ),
  MusicModel(
    name: 'Ghayegh (feat. Poobon)',
    artist: "Behzad Leito",
    cover: "assets/images/ghayegh_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 43),
  ),
  MusicModel(
    name: 'Hame Fahmidan',
    artist: "Arta",
    cover: "assets/images/hamefahmidan_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 00),
  ),
  MusicModel(
    name: 'Crazy',
    artist: "Dorcci",
    cover: "assets/images/crazy_cover.jpg",
    duration: const Duration(minutes: 2, seconds: 23),
  ),
  MusicModel(
    name: 'Lal',
    artist: "Yas",
    cover: "assets/images/lal_cover.jpg",
    duration: const Duration(minutes: 4, seconds: 42),
  )
];

List<MusicModel> recentlyPlayedData = [...globalTop50Data, ...songsYouMightLikeData]..shuffle();
