import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity, width: 1, color: AppColors.border);
  }
}
