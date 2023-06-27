import 'package:flutter/material.dart';

class AppSmallIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final double size;
  const AppSmallIconButton({Key? key, required this.icon, required this.onPressed, this.size = 24.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        splashRadius: size,
        constraints: BoxConstraints.tightFor(height: size, width: size),
        onPressed: onPressed,
        icon: icon);
  }
}
