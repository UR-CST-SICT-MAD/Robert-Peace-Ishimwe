import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(
    const MaterialApp(
    ),
  );
}

class PageBody extends StatefulWidget {
  @override
  _PageBodyState createState() => _PageBodyState();
}
class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/images/rw.jpg",width: 80,
                  height: 80,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bagirishya Rwema",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Back-end Devoloper",
                      style: TextStyle(color: Color(0xff07172f), fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff07172f),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "219000504",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),



        ),
        Padding(
          padding:
          const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
          child: Container(
            child: Text(
              "Mr Rwema is an IT Specialist and Programmer.Front-end & Back-end Developer.He develops Interactive Websites and Apps for iOS and Android",
              style: TextStyle(color: Color(0xff07172f), fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Text(
                "IT Specialist",
                style: TextStyle(
                    color: Color(0xff07172f), fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ],

    );
  }
}