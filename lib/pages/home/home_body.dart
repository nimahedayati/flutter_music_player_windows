import 'package:flutter/material.dart';
import 'package:flutter_music_player_windows/app/extensions.dart';
import 'package:heroicons/heroicons.dart';

import '../../models/artist_model.dart';
import '../../models/banner_model.dart';
import '../../models/fake_data.dart';
import '../../resources/app_colors.dart';
import '../../widgets/app_small_icon_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Music', style: TextStyle(color: AppColors.text, fontSize: 16.0, fontWeight: FontWeight.bold)),
              24.width,
              Text('Podcast', style: TextStyle(color: AppColors.subtext, fontSize: 16.0, fontWeight: FontWeight.w500)),
              24.width,
              Text('Live', style: TextStyle(color: AppColors.subtext, fontSize: 16.0, fontWeight: FontWeight.w500)),
              24.width,
              Text('Radio', style: TextStyle(color: AppColors.subtext, fontSize: 16.0, fontWeight: FontWeight.w500)),
            ],
          ),
          36.height,
          _HomeBodyBannerItem(bannerData),
          36.height,
          _HomeBodyPlaylistSection(title: 'Global Top 50', musics: globalTop50Data),
          36.height,
          _HomeBodyPlaylistSection(title: 'Songs You Might Like', musics: songsYouMightLikeData),
        ],
      ),
    );
  }
}

class _HomeBodyPlaylistSection extends StatelessWidget {
  final String title;
  final List<MusicModel> musics;

  const _HomeBodyPlaylistSection({
    required this.title,
    required this.musics,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), border: Border.all(color: AppColors.border, width: 1, style: BorderStyle.solid)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: TextStyle(color: AppColors.text, fontSize: 16.0, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text('See all', style: TextStyle(color: AppColors.subtext, fontSize: 14.0, fontWeight: FontWeight.w500))
            ],
          ),
          16.height,
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _HomeMusicItem(musics[index]),
                separatorBuilder: (context, index) => 22.width,
                itemCount: musics.length),
          )
        ],
      ),
    );
  }
}

class _HomeBodyBannerItem extends StatelessWidget {
  final BannerModel banner;
  const _HomeBodyBannerItem(this.banner);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(banner.cover), fit: BoxFit.cover),
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(36.0))),
      child: Stack(
        children: [
          Container(color: AppColors.imageOverlay),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(banner.artist, style: const TextStyle(fontSize: 36.0, fontWeight: FontWeight.w900, color: AppColors.white)),
                Text(banner.description, style: TextStyle(fontSize: 14.0, color: AppColors.white.withOpacity(0.8))),
                16.height,
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: AppColors.white),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    8.width,
                    AppSmallIconButton(
                        onPressed: () {},
                        icon: const HeroIcon(HeroIcons.play, style: HeroIconStyle.mini, size: 16.0, color: AppColors.primary)),
                    const Text('PLAY', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: AppColors.primary)),
                    16.width,
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HomeMusicItem extends StatelessWidget {
  final MusicModel music;
  const _HomeMusicItem(this.music);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116 + 16 + 16,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), border: Border.all(color: AppColors.border, width: 1, style: BorderStyle.solid)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 116,
            height: 116,
            decoration: ShapeDecoration(
                image: DecorationImage(image: AssetImage(music.cover), fit: BoxFit.cover),
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(32.0))),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 36,
                height: 36,
                margin: const EdgeInsets.all(12.0),
                decoration:
                    ShapeDecoration(color: AppColors.white, shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(24.0))),
                child: AppSmallIconButton(
                    onPressed: () {},
                    icon: const HeroIcon(HeroIcons.play, style: HeroIconStyle.mini, size: 16.0, color: AppColors.primary)),
              ),
            ),
          ),
          12.height,
          Text(music.name, style: TextStyle(color: AppColors.text, fontSize: 12.0, fontWeight: FontWeight.bold), maxLines: 1),
          8.height,
          Text(music.artist, style: TextStyle(color: AppColors.subtext, fontSize: 10.0), maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
