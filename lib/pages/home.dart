
import 'package:covid_app/pages/live_map.dart';
import 'package:covid_app/pages/statistics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
          body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              
              floating: true,
              pinned: false,
              elevation: 3,
              snap: false,
              backgroundColor: Colors.black,
              expandedHeight: 170.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(image: AssetImage('images/appBar.jpg')),
                title: Card(
                  color: Colors.grey[800].withOpacity(0.4),
                  elevation: 3.0,
                  
                  child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('COVID 19\nSTATS' , 
                           style: TextStyle(
                           color: Colors.blueGrey[100],
                           fontWeight: FontWeight.bold,
                           fontSize: 40,
                    ), 
                  ),
                                  ),
                ),
                centerTitle:true,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverGrid.count(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                children: <Widget>[
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.all(20),
                        elevation: 3,
                        color: Colors.grey[900],
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/stats.png'),
                              height: 200,
                              ),
                            Text('Statistics' , 
                              style: TextStyle(
                                fontSize: 50,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            
                          ]
                        ),
                      ),
                      onTap: () => Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => StatisticsPage()
                        )),
                  ),
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.all(20),
                        elevation: 3,
                        color: Colors.grey[900],
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/map.png'),
                              height: 200,
                            ),
                            Text('Live Map' , 
                              style: TextStyle(
                                fontSize: 50,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Powered by' , 
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12.0,
                                    ),     
                                  ),
                                  Image(
                                    image: AssetImage('images/logo.png'),
                                    height: 30,
                                    )
                                ],
                              ),
                            )
                          ]
                        ),
                        
                      ),
                      onTap: () => Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => LiveMapPage(),
                        )),
                  ),
                ],
                ),
            ),
          ],
        ),
    );
  }
}