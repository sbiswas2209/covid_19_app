




import 'package:covid_app/pages/alet.dart';
import 'package:covid_app/pages/country_data.dart';
import 'package:covid_app/pages/earth_data.dart';
import 'package:covid_app/pages/error.dart';
import 'package:covid_app/pages/home.dart';
import 'package:covid_app/pages/live_map.dart';
import 'package:covid_app/pages/statistics.dart';
import 'package:covid_app/pages/statistics_global.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  MyApp({Key key}) : super(key: key);
  
  final routes = <String , WidgetBuilder>{
    HomePage.tag : (context) => HomePage(),
    LiveMapPage.tag : (context) => LiveMapPage(),
    ErrorPage.tag : (context) => ErrorPage(),
    GlobalStatistics.tag: (context) => GlobalStatistics(),
    StatisticsPage.tag: (context) => StatisticsPage(),
    EarthData.tag: (context) => EarthData(),
    CountryDataPage.tag: (context) => CountryDataPage(),
    AlertPage.tag: (context) => AlertPage(),
  };



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: routes,
    );
  }
}