[English](./README.md) | 简体中文

# flutter_vector_icons

[![pub package](https://img.shields.io/pub/v/flutter_vector_icons.svg)](https://pub.dartlang.org/packages/flutter_vector_icons)

在Flutter中使用可定制的图标，该插件包是受到 [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons)启发而开发

## 注意
>> 1. 1.0.0版本API有很大变化，请谨慎升级
>> 2. Icon名字以数字开头的前面加了`$`符号
>> 3. Icon名字为dart关键字的后边加了下划线`_`

## 可用的图标

[浏览所有](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) by AntFinance (**297** icons)
* [`Entypo`](http://entypo.com) by Daniel Bruce (**411** icons)
* [`EvilIcons`](http://evil-icons.io) by Alexander Madyankin & Roman Shamin (v1.10.1, **70** icons)
* [`Feather`](http://feathericons.com) by Cole Bemis & Contributors (v4.28.0, **285** icons)
* [`FontAwesome`](http://fortawesome.github.io/Font-Awesome/icons/) by Dave Gandy (v4.7.0, **675** icons)
* [`FontAwesome 5`](https://fontawesome.com) by Fonticons, Inc. (v5.13.0, **1588** icons)
* [`Fontisto`](https://www.fontisto.com/) by Fontisto, Inc. (v3.0.4, **615** icons)
* [`Foundation`](http://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0, **283** icons)
* [`Ionicons`](https://ionicons.com/) by Iconic Framework (v5.0.1, **1227** icons)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) by MaterialDesignIcons.com  (v5.3.45, **5346** icons)
* [`MaterialIcons`](https://www.google.com/design/icons/) by Google, Inc. (v4.0.0, **1547** icons)
* [`Octicons`](http://octicons.github.com) by Github, Inc. (v8.4.1, **184** icons)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) by Sabbir & Contributors (v2.4.1, **189** icons)
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) by erikflowers (v2.0.10, **596** icons)
* [`Zocial`](http://zocial.smcllns.com/) by Sam Collins (v1.0, **100** icons)

## 使用
要使用此插件包,请将flutter_vector_icons作为依赖项添加到您的`pubspec.yaml`文件中,详见[dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## 示例

``` dart
// 引入包
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/material.dart';

Icon(AntDesign.stepforward),
Icon(Ionicons.ios_search),
Icon(FontAwesome.glass),
Icon(MaterialIcons.ac_unit),
Icon(FontAwesome5.address_book),
Icon(FontAwesome5Solid.address_book),
Icon(FontAwesome5Brands.$500px)

// 1.1.0之后提供了FlutterVectorIcons类访问所有的图标
// 图标名称在原有的基础上添加了图标集简称名称作为后缀
// 简称如下
//Ant Design Icons -> ant,
//Entypo Icons -> ent,
//Evil Icons -> evi,
//Feather Icons -> fea,
//Font Awesome Icons -> faw,
//Foundation Icons -> fou,
//Ionicons Icons -> ion,
//Material Community Icons -> mco,
//Material Icons -> mdi,
//Octicons Icons -> oct,
//Simple Line Icons -> sli,
//Zocial Icons -> zoc,
//Weather Icons -> wea
Icon(FlutterIcons.stepforward_ant)
Icon(FlutterIcons.html5_faw)
...

```
### 特别感谢react-native-vector-icons插件包及其开发者们
