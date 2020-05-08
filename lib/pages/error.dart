import 'package:covid_app/pages/home.dart';
import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  
  static final String tag = 'Error-Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.error ,
            color: Colors.blueGrey,
            size: 250,
            ),
            SizedBox(height: 10),
            Text('An error occured while retreiving data.\nGo back to the Home Page and try again or Check your connectivity.',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
            ),
            FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home , 
                  color: Colors.blueGrey,
                  ),
                  Text('Home' , style: TextStyle(color: Colors.blueGrey)),
                ],
              ),
              onPressed: () => Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => HomePage()
                )),
            ),
        ],
      ),
    );
  }
}