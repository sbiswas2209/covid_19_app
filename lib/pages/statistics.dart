import 'package:covid_app/pages/earth_data.dart';
import 'package:covid_app/pages/statistics_global.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  
  static final String tag = 'Statistics-Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.red),
        title: Row(
          children: <Widget>[
            Icon(Icons.graphic_eq , color: Colors.red,),
            SizedBox(width: 10),
            Text('Statistics' , 
            style: TextStyle(
              color: Colors.red,
            ),
            )
          ],
          ), 
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:10),
          Center(
            child: GestureDetector(
                          child: Card(
                
                color: Colors.grey[900],
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/earth.png'),
                      height: 200,
                    ),
                    SizedBox(height:10),
                    Text('Global Data' , 
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.push(context , new MaterialPageRoute(
                builder: (BuildContext context) => EarthData()
              )),
            ),
          ),
          SizedBox(height:10),
          Center(
            child: GestureDetector(
                          child: Card(
                
                color: Colors.grey[900],
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/country.png'),
                      height: 200,
                    ),
                    SizedBox(height:10),
                    Text('Country Wise\n        Data' , 
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                
              ),
              onTap: () => Navigator.push(context , new MaterialPageRoute(
                builder: (BuildContext context) => new GlobalStatistics()
              )),
            ),
          ),
        ],
      ),
    );
  }
}