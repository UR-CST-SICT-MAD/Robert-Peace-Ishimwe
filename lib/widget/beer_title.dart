import 'package:flutter/material.dart';
import '../models/beer.dart';

class BeerTile extends StatelessWidget {
  final Restaurants _beer;
  BeerTile(this._beer);

  @override 
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_beer.restaurant_name),
        subtitle: Text(_beer.location),

        ),
        Divider()
      ],
    );
}