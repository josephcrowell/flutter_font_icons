import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Icon(AntDesign.stepforward),
            Icon(Ionicons.ios_search),
            Icon(FontAwesome.glass),
            Icon(MaterialIcons.ac_unit),
            Icon(FontAwesome5.address_book),
            Icon(FontAwesome5Solid.address_book),
            Icon(FontAwesome5Brands.$500px),
            Icon(WeatherIcons.wi_alien),
            Icon(WeatherIcons.wi_cloud),
            Icon(WeatherIcons.wi_day_rain),
          ],
        ),
      ),
    );
  }
}
