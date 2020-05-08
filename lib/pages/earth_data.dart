import 'dart:convert';


import 'package:covid_app/models/country_data.dart';
import 'package:covid_app/pages/earth_show_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EarthData extends StatefulWidget {
  static final String tag = 'Earth-Data-State';
  @override
  _EarthDataState createState() => _EarthDataState();
}

class _EarthDataState extends State<EarthData> {


  Future<CountryData> global;

  Future<CountryData> fetchData() async{
    final response = await http.get('https://api.covid19api.com/world/total');

    return response.statusCode == 200 ? CountryData.fromJson(jsonDecode(response.body)) : Exception('Failed to load Data.');

  }
  
  @override
  void initState() {
    super.initState();
    global = fetchData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.red,),
        title: Row(
          children: <Widget>[
            Icon(Icons.public , color: Colors.red,),
            SizedBox(width:10),
            Text('Global Data' , 
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),
      body: FutureBuilder<CountryData>(
        future: global,
        builder: (context , snapshot){
          return snapshot.hasData ? EarthShowData(global: snapshot.data) : Center(child: CircularProgressIndicator(backgroundColor: Colors.green,),);
        },
      ),
    );
  }
}