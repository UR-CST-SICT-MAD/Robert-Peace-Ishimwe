import 'package:flutter/material.dart';
import '../repository/beer_repository.dart';
import '../models/beer.dart';
import '../widget/beer_title.dart';

class Home extends StatefulWidget{


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Restaurants> _beers = <Restaurants>[];

  @override
  void initState(){
    super.initState();
    listenForBeers();
  }

  @override 
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
        centerTitle: true,
        title: Text('Restaurants'),
      ),
      body: ListView.builder(
        itemCount: _beers.length,
        itemBuilder: (context, index) => BeerTile(_beers[index]),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color(0xFF1B5E20),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Color(0xFF1B5E20),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          backgroundColor: Color(0xFF1B5E20),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Color(0xFF1B5E20),
        ),
      ],
    ),
    );
    void listenForBeers() async{
     final Stream<Restaurants> stream = await getBeers();
      stream.listen((Restaurants beer) =>
      setState(() => _beers.add(beer))
    );
  }

}



