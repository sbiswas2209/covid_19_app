import 'dart:convert';

import 'package:covid_app/models/country.dart';
import 'package:covid_app/pages/globalData.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<List<Country>> fetchDataGlobal(http.Client client) async{
  final response = await client.get('https://api.covid19api.com/countries');
  print(response.body);
  return compute(parseDataGlobal , response.body);

}


List<Country> parseDataGlobal(String responseBody){
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Country>((json) => Country.fromJson(json)).toList();
}


class GlobalStatistics extends StatelessWidget {
  
  
  GlobalStatistics({Key key , this.title}) : super(key: key);
  static final String tag = 'global-statistics';
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.red),
        title: Row(
          children: <Widget>[
            Icon(
              Icons.public,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Text('Global Country Wise' , 
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ), 
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<Country>>(
        future: fetchDataGlobal(http.Client()),
        builder: (context , snapshot){
          if(snapshot.hasError){
            print(snapshot.error);
          }
          print(snapshot.data);
          return snapshot.hasData ? GlobalData(data: snapshot.data,) :
          Center(child: CircularProgressIndicator(
            backgroundColor: Colors.lightGreen,
          ),);
        },
      ),
    );
  }
}