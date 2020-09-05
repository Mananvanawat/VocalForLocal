import 'package:flutter/material.dart';
import 'package:web_scrapper/selectscan.dart';
import 'Search.dart';
import 'package:web_scrapper/barcode.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tellmetheorigin',
        theme: ThemeData(
          primaryColor: Colors.cyan,
          indicatorColor: Colors.white,
          primaryColorDark: Colors.cyanAccent,
          primaryIconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: TextTheme(
            headline: TextStyle(color: Colors.white),
          ),
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  final _tabs = <Widget>[
    Tab(text: 'BARCODE'),
    Tab(text: 'SEARCH'),
    Tab(text: 'PHOTO'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabs.length,
        initialIndex: 1,
        child: Scaffold(
            // top app bar
            appBar: AppBar(
              title: Text('Local Pe Vocal'),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
              bottom: TabBar(tabs: _tabs),
            ),

            // body (tab views)
            body: TabBarView(
              children: <Widget>[
                BarcodeScan(),
                Search(),
                MLHome(),

              ],
            )));
  }
}
