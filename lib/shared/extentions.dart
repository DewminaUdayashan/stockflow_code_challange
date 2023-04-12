import 'package:flutter/material.dart';

import 'enums.dart';

extension GlobalExtentions on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get paddingTop => MediaQuery.of(this).padding.top;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ClassExt on Class {
  String get name {
    switch (this) {
      case Class.bussiness:
        return 'Bussiness';
      case Class.firstClass:
        return 'First Class';
      default:
        return 'Economy';
    }
  }
}
