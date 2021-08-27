# flutter_font_icons

English | [简体中文](./README_zh-CN.md)

[![pub package](https://img.shields.io/pub/v/flutter_font_icons.svg)](https://pub.dartlang.org/packages/flutter_font_icons)

Customizable Icons for Flutter, Inspired by [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons)

## Notice
>>
>> 1. `v2.0.0` has major Api changes, please be careful when upgrading
>> 2. icon names that begin with a number are preceded by a `$`prefix
>> 3. icons named with a `dart` language keyword have the `_` suffix added

## Bundled Icon Sets

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) by AntFinance (**297** icons)
* [`Entypo`](https://entypo.com) by Daniel Bruce (**411** icons)
* [`EvilIcons`](https://evil-icons.io) by Alexander Madyankin & Roman Shamin (v1.10.1, **70** icons)
* [`Feather`](https://feathericons.com) by Cole Bemis & Contributors (v4.28.0, **285** icons)
* [`FontAwesome`](https://fortawesome.github.io/Font-Awesome/icons/) by Dave Gandy (v4.7.0, **675** icons)
* [`FontAwesome 5`](https://fontawesome.com) by Fonticons, Inc. (v5.13.0, **1588** icons)
* [`Fontisto`](https://www.fontisto.com/) by Fontisto, Inc. (v3.0.4, **615** icons)
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0, **283** icons)
* [`Ionicons`](https://ionicons.com/) by Iconic Framework (v5.0.1, **1227** icons)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) by MaterialDesignIcons.com  (v5.3.45, **5346** icons)
* [`MaterialIcons`](https://www.google.com/design/icons/) by Google, Inc. (v4.0.0, **1547** icons)
* [`Octicons`](https://octicons.github.com) by Github, Inc. (v8.4.1, **184** icons)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) by Sabbir & Contributors (v2.4.1, **189** icons)
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) by erikflowers (v2.0.10, **596** icons)
* [`Zocial`](https://zocial.smcllns.com/) by Sam Collins (v1.0, **100** icons)

## Usage

To use this plugin, add `flutter_font_icons` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Widget

### IconToggle

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| selectedIconData  | Icon is displayed when value is true |
| unselectedIconData | Icon is displayed when value is false |
| activeColor | When value is true, the icon color is displayed |
| inactiveColor | When value is false, the icon color is displayed |
| value| Whether this IconToggle is selected. |
| onChanged | Called when the value of the IconToggle should change. |
| duration| The duration of the transition from selected Icon to unselected Icon |
| reverseDuration | The duration of the transition from unselected Icon to selected Icon |
| transitionBuilder | Transition animation function between the selected Icon and the unselected Icon |

## Example

``` dart
// Import package
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

// Include icons with
Icon(AntDesign.stepforward),
Icon(Ionicons.ios_search),
Icon(FontAwesome.glass),
Icon(MaterialIcons.ac_unit),
Icon(FontAwesome5.address_book),
Icon(FontAwesome5Solid.address_book),
Icon(FontAwesome5Brands.$500px),
```
