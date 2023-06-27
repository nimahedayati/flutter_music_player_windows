import 'package:flutter/material.dart';
import 'package:flutter_music_player_windows/widgets/app_vertical_divider.dart';

import 'home_body.dart';
import 'home_main_sidebar.dart';
import 'home_player_sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          HomeMainSideBar(),
          AppVerticalDivider(),
          Expanded(child: HomeBody()),
          AppVerticalDivider(),
          HomePlayerSideBar(),
        ],
      ),
    );
  }
}
