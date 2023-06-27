import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';

class AppColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = TailwindColors.red;
  static const Color amber = TailwindColors.amber;
  static const Color green = TailwindColors.green;
  static const Color primary = TailwindColors.orange;
  static Color text = Colors.blueGrey.shade900;
  static Color subtext = Colors.blueGrey.shade400;
  static Color grey = TailwindColors.blueGray;
  static Color imageOverlay = Colors.black.withOpacity(0.4);
  static Color border = TailwindColors.blueGray.shade200.withOpacity(0.8);
}
