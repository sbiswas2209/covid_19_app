import 'package:covid_app/models/country_data.dart';
import 'package:covid_app/pages/alet.dart';
import 'package:flutter/material.dart';

class CountryShowData extends StatelessWidget {
  
  final List<CountryData> data;
  final String iso;

  CountryShowData({Key key , this.data , this.iso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try{
      return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: NetworkImage('https://www.countryflags.io/${this.iso}/shiny/64.png') ,
                height: 150,
              ),
              SizedBox(height: 10,),
              Text('Confirmed Cases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${data[data.length-1].confirmed}' , 
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width:5),
                  Icon(
                      (data[data.length-1].confirmed==data[data.length-2].confirmed) ? 
                            Icons.remove : (data[data.length-1].confirmed>data[data.length-2].confirmed) ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: (data[data.length-1].confirmed==data[data.length-2].confirmed) ? Colors.orange : 
                            (data[data.length-1].confirmed>data[data.length-2].confirmed) ? Colors.red : Colors.lightGreen,
                    ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Deaths',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${data[data.length-1].deaths}' , 
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width:5),
                  Icon(
                      (data[data.length-1].deaths==data[data.length-2].deaths) ? 
                            Icons.remove : (data[data.length-1].deaths>data[data.length-2].deaths) ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: (data[data.length-1].deaths==data[data.length-2].deaths) ? Colors.orange : 
                            (data[data.length-1].deaths>data[data.length-2].deaths) ? Colors.red : Colors.lightGreen,
                    ),
                ],
              ),
              SizedBox(height:10,),
              Text('Mortality rate (Aprox.)' ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text(' ${((data[data.length-1].deaths/data[data.length-1].confirmed)*100).toInt()}%',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${data[data.length-1].recovered}' , 
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width:5),
                  Icon(
                      (data[data.length-1].recovered==data[data.length-2].recovered) ? 
                            Icons.remove : (data[data.length-1].recovered>data[data.length-2].recovered) ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: (data[data.length-1].recovered==data[data.length-2].recovered) ? Colors.orange : 
                            (data[data.length-1].recovered>data[data.length-2].deaths) ? Colors.red : Colors.lightGreen,
                    ),
                ],
              ),
              SizedBox(height:10,),
              Text('Recovery rate (Aprox.)' ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:10,),
              Text(' ${((data[data.length-1].recovered/data[data.length-1].confirmed)*100).toInt()}%',
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
    catch(e){
      return AlertPage();
    }
  }
}