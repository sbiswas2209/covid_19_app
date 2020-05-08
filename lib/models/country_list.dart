import 'package:flutter/material.dart';

import 'country.dart';


class CountryList extends StatelessWidget {

  final List<Country> countries;

  CountryList ({Key key , this.countries}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1
      ),
      itemCount: countries.length,
      itemBuilder: (context , index){
        return Card(
          color: Colors.grey[900],
        );
      },
    );
  }
}