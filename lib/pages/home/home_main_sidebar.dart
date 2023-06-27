import 'package:flutter/material.dart';
import 'package:flutter_music_player_windows/app/extensions.dart';
import 'package:heroicons/heroicons.dart';

import '../../resources/app_colors.dart';

class HomeMainSideBar extends StatelessWidget {
  const HomeMainSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 214,
      padding: const EdgeInsets.fromLTRB(36, 36, 0, 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.text),
                  padding: const EdgeInsets.all(6.0),
                  child: const HeroIcon(
                    HeroIcons.play,
                    style: HeroIconStyle.mini,
                    size: 12.0,
                    color: AppColors.white,
                  )),
              8.width,
              Text('NH PLAYER', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.text)),
            ],
          ),
          36.height,
          _buildSectionTitle('MENU'),
          20.height,
          _buildMenuItem('Home', HeroIcons.home, selected: true),
          22.height,
          _buildMenuItem('Search', HeroIcons.magnifyingGlass),
          22.height,
          _buildMenuItem('Discover', HeroIcons.globeAsiaAustralia),
          22.height,
          _buildMenuItem('Albums', HeroIcons.bookmark),
          22.height,
          _buildMenuItem('Artists', HeroIcons.user),
          36.height,
          _buildSectionTitle('LIBRARY'),
          20.height,
          _buildMenuItem('Recent', HeroIcons.clock),
          20.height,
          _buildMenuItem('Favorites', HeroIcons.heart),
          20.height,
          _buildMenuItem('Local', HeroIcons.folder),
          36.height,
          _buildSectionTitle('PLAYLIST'),
          20.height,
          _buildMenuItem('Create New', HeroIcons.plusCircle),
          20.height,
          _buildMenuItem('Pop Punk', HeroIcons.documentText),
          20.height,
          _buildMenuItem('Rock', HeroIcons.documentText),
          36.height,
          _buildSectionTitle('GENERAL'),
          20.height,
          _buildMenuItem('Settings', HeroIcons.cog6Tooth),
          20.height,
          _buildMenuItem('Log Out', HeroIcons.arrowLeftOnRectangle),
        ],
      ),
    );
  }

  _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 12.0, letterSpacing: 2, fontWeight: FontWeight.bold, color: AppColors.grey),
    );
  }

  _buildMenuItem(String title, HeroIcons icon, {bool selected = false}) {
    return Row(
      children: [
        HeroIcon(
          icon,
          style: HeroIconStyle.mini,
          size: 24.0,
          color: !selected ? AppColors.grey : AppColors.primary,
        ),
        12.width,
        Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: !selected ? AppColors.grey : AppColors.primary)),
        const Spacer(),
        if (selected) Container(height: 22, width: 3, color: AppColors.primary)
      ],
    );
  }
}
