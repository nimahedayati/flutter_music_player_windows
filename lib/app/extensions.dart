import 'package:flutter/material.dart';

extension IntegerSpaceSizedBox on int {
  Widget get width => SizedBox(width: toDouble());
  Widget get height => SizedBox(height: toDouble());
}

extension DoubleSpaceSizedBox on double {
  Widget get width => SizedBox(width: this);
  Widget get height => SizedBox(height: this);
}
