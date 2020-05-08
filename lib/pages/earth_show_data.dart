import 'package:covid_app/models/country_data.dart';
import 'package:flutter/material.dart';

class EarthShowData extends StatelessWidget {
  
  final CountryData global;

  EarthShowData({Key key, this.global}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/earth.png') ,
                height: 200,
              ),
              SizedBox(height: 10,),
              Text('Confirmed Cases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('${global.confirmed}' , 
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10,),
              Text('Deaths',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('${global.deaths}' , 
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text('Mortality rate (Aprox.)' ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text(' ${((global.deaths/global.confirmed)*100).toInt()}%',
                style: TextStyle(
                  color: Colors.red,
                  fontSize:20,
                ),
              ),
              SizedBox(height: 10,),
              Text('Recovered',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('${global.recovered}' , 
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text('Recovery rate (Aprox.)' ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text(' ${((global.recovered/global.confirmed)*100).toInt()}%',
                style: TextStyle(
                  color: Colors.green,
                  fontSize:20,
                ),
              ),
            ],
          ),
      ),
    );
  }
}