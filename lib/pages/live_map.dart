import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class LiveMapPage extends StatelessWidget {

  static String tag = 'Live-Map';
  static final String url = 'https://www.trackcorona.live/map'; 
  LiveMapPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: <Widget>[
            Icon(Icons.map , color: Colors.red),
            SizedBox(width: 10),
            Text('Live Map' , 
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              )),
          ],
        ),
          iconTheme: IconThemeData(color: Colors.red),
      ),
      body: Container(
        color: Colors.grey[800],
        child: WebviewScaffold(url: url),
      ),
    );
  }
}