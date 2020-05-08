import 'dart:convert';

import 'package:covid_app/models/country_data.dart';
import 'package:covid_app/pages/country_show_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryDataPage extends StatelessWidget {
  
  final String iso;
  final String slug;
  final String countryName;
  static final String tag = 'Country-Data-Page';

  CountryDataPage({ this.slug  , this.countryName , this.iso});

  Future<List<CountryData>> fetchData(http.Client client) async {
    print(this.slug);
    final response = await client.get('https://api.covid19api.com/live/country/${this.slug}');
    print(response.body);
    return this.parseDataCountry(response.body);
  }

  List<CountryData> parseDataCountry(String responseBody){
    final parsed = jsonDecode(responseBody).cast<Map<String , dynamic>>();
    return parsed.map<CountryData>((json) => CountryData.fromJsonCountry(json)).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.red),
        title: Row(
          children: <Widget>[
            Image(image: NetworkImage('https://www.countryflags.io/${this.iso}/shiny/64.png'), height:50),
            SizedBox(width: 10),
            Text('${this.countryName} Data',
              style: TextStyle(
                color:Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<CountryData>>(
        future: fetchData(http.Client()),
        builder: (context , snapshot){
          if(snapshot.hasError){
            print('An error occured.');
          }
          return snapshot.hasData ? CountryShowData(data:snapshot.data , iso:this.iso) : Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}