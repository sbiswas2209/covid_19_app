import 'dart:ui';

import 'package:covid_app/models/country.dart';
import 'package:covid_app/pages/country_data.dart';
import 'package:flutter/material.dart';

class GlobalData extends StatelessWidget {
  
  final List<Country> data;

  GlobalData({Key key , this.data}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemCount: data.length,
      itemBuilder: (context , index){
        return GestureDetector(
                  child: Card(
            elevation: 3,
            color: Colors.grey[900],
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Image(
                  image: NetworkImage('https://www.countryflags.io/${data[index].iso}/shiny/64.png'),
                  height:50,
                ),
                Text(
                  'Country',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height:10),
                Center(
                  child: Text(data[index].country,
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () => Navigator.push(context, new MaterialPageRoute(
            builder: (BuildContext context) => new CountryDataPage(slug: data[index].slug , countryName: data[index].country , iso: data[index].iso,)
          )),
        );
      },
      );
  }
}