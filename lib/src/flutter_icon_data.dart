import 'package:flutter/material.dart';

/// Used to generate IconData for different icon sets
class FlutterIconData extends IconData {
  /// The main constructor. Other constructors call this with the font family
  /// as seen below.
  const FlutterIconData(int codePoint, String fontFamily)
      : super(codePoint,
            fontFamily: fontFamily, fontPackage: 'flutter_font_icons');

  /// Gets Ant Design font data
  const FlutterIconData.antDesign(int codePoint) : this(codePoint, 'AntDesign');

  /// Gets Feather font data
  const FlutterIconData.feather(int codePoint) : this(codePoint, 'Feather');

  /// Gets Font Awesome 4 font data
  const FlutterIconData.fontAwesome(int codePoint)
      : this(codePoint, 'FontAwesome');

  /// Gets Font Awesome 5 Standard font data
  const FlutterIconData.fontAwesome5(int codePoint)
      : this(codePoint, 'FontAwesome5');

  /// Gets Font Awesome 5 Brands font data
  const FlutterIconData.fontAwesome5Brands(int codePoint)
      : this(codePoint, 'FontAwesome5_Brands');

  /// Gets Font Awesome 5 Solid font data
  const FlutterIconData.fontAwesome5Solid(int codePoint)
      : this(codePoint, 'FontAwesome5_Solid');

  /// Gets Fontisto font data
  const FlutterIconData.fontisto(int codePoint) : this(codePoint, 'Fontisto');

  /// Gets Foundation font data
  const FlutterIconData.foundation(int codePoint)
      : this(codePoint, 'Foundation');

  /// Gets Entypo font data
  const FlutterIconData.entypo(int codePoint) : this(codePoint, 'Entypo');

  /// Gets Evil Icons font data
  const FlutterIconData.evilIcons(int codePoint) : this(codePoint, 'EvilIcons');

  /// Gets Iconicons font data
  const FlutterIconData.ionicons(int codePoint) : this(codePoint, 'Ionicons');

  /// Gets Material Community Icons font data
  const FlutterIconData.materialCommunityIcons(int codePoint)
      : this(codePoint, 'MaterialCommunityIcons');

  /// Gets Material Icons font data
  const FlutterIconData.materialIcons(int codePoint)
      : this(codePoint, 'MaterialIcons');

  /// Gets Octicons font data
  const FlutterIconData.octicons(int codePoint) : this(codePoint, 'Octicons');

  /// Gets Simple Line Icons font data
  const FlutterIconData.simpleLineIcons(int codePoint)
      : this(codePoint, 'SimpleLineIcons');

  /// Gets Weather Icons font data
  const FlutterIconData.weatherIcons(int codePoint)
      : this(codePoint, 'WeatherIcons');

  /// Gets Zocial font data
  const FlutterIconData.zocial(int codePoint) : this(codePoint, 'Zocial');
}
