import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenheghit;
  static double? screenwedith;


  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenheghit  = _mediaQueryData!.size.height;
    screenwedith = _mediaQueryData!.size.width;


  }

}


class AppSizeConfig {
  static double?_screenWidth;
  static double? _screenHeight;
  static double? _blockWidth;
  static double? _blockHeight;

  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth! < 350) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth !/ 100;
    _blockHeight = _screenHeight! / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;


  }
}