import 'package:flutter/material.dart';
import 'package:flutter_music_player_windows/app/extensions.dart';
import 'package:heroicons/heroicons.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../models/artist_model.dart';
import '../../models/fake_data.dart';
import '../../resources/app_colors.dart';
import '../../widgets/app_small_icon_button.dart';

class HomePlayerSideBar extends StatelessWidget {
  const HomePlayerSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 330,
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Recently Played', style: TextStyle(color: AppColors.text, fontSize: 16.0, fontWeight: FontWeight.bold)),
              const Spacer(),
              Container(width: 10, height: 10, decoration: const ShapeDecoration(shape: CircleBorder(), color: AppColors.green)),
              8.width,
              Container(width: 10, height: 10, decoration: const ShapeDecoration(shape: CircleBorder(), color: AppColors.amber)),
              8.width,
              Container(width: 10, height: 10, decoration: const ShapeDecoration(shape: CircleBorder(), color: AppColors.red)),
            ],
          ),
          36.height,
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => _RecentPlayedItem(recentlyPlayedData[index]),
                  separatorBuilder: (context, index) => 32.height,
                  itemCount: 10)),
          24.height,
          _NowPlayingItem(nowPLayingData),
          12.height,
        ],
      ),
    );
  }
}

class _RecentPlayedItem extends StatelessWidget {
  final MusicModel music;
  const _RecentPlayedItem(this.music);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: ShapeDecoration(
              image: DecorationImage(image: AssetImage(music.cover), fit: BoxFit.cover),
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
        ),
        16.width,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(music.name, style: TextStyle(color: AppColors.text, fontSize: 12.0, fontWeight: FontWeight.bold)),
              8.height,
              Text(music.artist, style: TextStyle(color: AppColors.subtext, fontSize: 10.0), maxLines: 1, overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
        16.width,
        Container(
          width: 36,
          height: 36,
          decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: AppColors.border, width: 1, style: BorderStyle.solid))),
          child: AppSmallIconButton(
              onPressed: () {}, icon: const HeroIcon(HeroIcons.play, style: HeroIconStyle.mini, size: 16.0, color: AppColors.primary)),
        ),
      ],
    );
  }
}

class _NowPlayingItem extends StatefulWidget {
  final MusicModel music;
  const _NowPlayingItem(this.music);

  @override
  State<_NowPlayingItem> createState() => _NowPlayingItemState();
}

class _NowPlayingItemState extends State<_NowPlayingItem> {
  Color? backgroundColor;

  getCoverColorPallet(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(imageProvider);
    backgroundColor = paletteGenerator.dominantColor!.color;
    setState(() {});
  }

  @override
  void initState() {
    getCoverColorPallet(AssetImage(widget.music.cover));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28.0),
      decoration: ShapeDecoration(color: backgroundColor, shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(36.0))),
      child: Column(
        children: [
          Text(
            'Now Playing',
            style: TextStyle(color: AppColors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          24.height,
          Container(
            width: double.infinity,
            height: 120,
            decoration: ShapeDecoration(
                image: DecorationImage(image: AssetImage(widget.music.cover), fit: BoxFit.cover),
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(24.0))),
          ),
          32.height,
          Text(
            widget.music.name,
            style: TextStyle(color: AppColors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          Text(
            widget.music.artist,
            style: TextStyle(color: AppColors.white.withOpacity(0.5), fontSize: 12.0),
          ),
          24.height,
          Row(
            children: [
              Text(
                '2:40',
                style: TextStyle(color: AppColors.white.withOpacity(0.8), fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              8.width,
              Expanded(
                  child: SliderTheme(
                      data: SliderThemeData(
                          overlayShape: SliderComponentShape.noOverlay,
                          inactiveTrackColor: AppColors.white.withOpacity(0.2),
                          trackHeight: 1,
                          activeTrackColor: AppColors.white.withOpacity(0.8),
                          thumbColor: AppColors.white.withOpacity(0.8),
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6)),
                      child: Slider(value: 0.4, onChanged: (value) {}))),
              8.width,
              Text(
                widget.music.time,
                style: TextStyle(color: AppColors.white.withOpacity(0.8), fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          24.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSmallIconButton(
                  onPressed: () {},
                  icon: HeroIcon(HeroIcons.arrowPathRoundedSquare,
                      style: HeroIconStyle.mini, size: 16.0, color: AppColors.white.withOpacity(0.8))),
              AppSmallIconButton(
                  onPressed: () {},
                  icon: RotatedBox(
                      quarterTurns: 2,
                      child:
                          HeroIcon(HeroIcons.playPause, style: HeroIconStyle.mini, size: 18.0, color: AppColors.white.withOpacity(0.8)))),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: ShapeDecoration(
                    color: AppColors.white.withOpacity(0.2), shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(24.0))),
                child: IconButton(
                    onPressed: () {},
                    icon: HeroIcon(HeroIcons.play, style: HeroIconStyle.mini, size: 18.0, color: AppColors.white.withOpacity(0.8))),
              ),
              AppSmallIconButton(
                  onPressed: () {},
                  icon: HeroIcon(HeroIcons.playPause, style: HeroIconStyle.mini, size: 18.0, color: AppColors.white.withOpacity(0.8))),
              AppSmallIconButton(
                  onPressed: () {},
                  icon:
                      HeroIcon(HeroIcons.arrowsRightLeft, style: HeroIconStyle.mini, size: 16.0, color: AppColors.white.withOpacity(0.8))),
            ],
          )
        ],
      ),
    );
  }
}
