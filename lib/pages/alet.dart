import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  
  static final String tag = 'Alert-Page';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image(
            image: AssetImage('images/alert.gif'),
            height: 200,
          ),
          SizedBox(height:20),
          Text('It seems that an error occured while reading the data.\nPlease try again.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}