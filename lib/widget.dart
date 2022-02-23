import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    flexibleSpace: Container
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ const Color(0xff07172f),
            const Color(0xff338bbb)],
        ),
      ),
    ),
    leading: Icon(Icons.restaurant),
    title: Text('Rwema & Robert Resto'),
    actions: [
      Icon(Icons.emoji_food_beverage_outlined),

    ],


  );
}
InputDeoration textFieldInputDecoration(String hintText) {
  retn InpDec

      hintSte(or rs.ite54
          UnlinBorderSide(color: Colors.white))
          erSide: e(color: Colors.white)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}

TextStyle biggerTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 18);
}
