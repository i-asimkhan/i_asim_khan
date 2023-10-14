import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static MediaQueryData get mediaQueryData =>
      _mediaQueryData ?? const MediaQueryData();
  static double? _screenWidth;
  static double get screenWidth => _screenWidth ?? 0.0;
  static double? _screenHeight;
  static double get screenHeight => _screenHeight ?? 0.0;

  static double get blockSizeHorizontal => screenWidth / 100;
  static double get blockSizeVertical => screenHeight / 100;
  static double get quarterWidth => screenWidth / 4;
  static double get quarterHeight => screenHeight / 4;
  static double get doubleQuarterWidth => screenWidth / 8;
  static double get doubleQuarterHeight => screenHeight / 8;
  static double get halfWidth => screenWidth / 2;
  static double get halfHeight => screenHeight / 2;
  static double get threeQuarterHeight => screenHeight * 0.75;
  static double get threeQuarterWidth => screenWidth * 0.75;
  static double get oneThirdHeight => screenHeight / 3;
  static double get oneThirdWidth => screenWidth / 3;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = mediaQueryData.size.width;
    _screenHeight = mediaQueryData.size.height;
  }
}
