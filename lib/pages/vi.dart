import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(
    const MaterialApp(
    ),
  );
}
class Vi extends StatefulWidget {
  @override
  State<Vi> createState() => _ViState();
}
class _ViState extends State<Vi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://rwemaapi.000webhostapp.com/dish.php?restaurant_id=1',
      ),

    );
  }
}