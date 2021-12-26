import 'package:flutter/material.dart';
import 'package:rwemaapi/pages/ho.dart';
import 'package:rwemaapi/pages/me.dart';
import 'package:rwemaapi/pages/vi.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'home.dart';
void main() {
  runApp(
    const MaterialApp(
    ),
  );
}
class WebViewApp extends StatefulWidget {
  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    Ho(),
    Me(),
    Vi(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
      ),
      body: pageList[pageIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value){
          setState(() {
            pageIndex = value;
          });
        },
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
  }
}