import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(
    const MaterialApp(
    ),
  );
}
class Ho extends StatefulWidget {
  @override
  State<Ho> createState() => _HoState();
}

class _HoState extends State<Ho> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://rwemaapi.000webhostapp.com',
      ),

    );
  }
}