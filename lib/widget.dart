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
    title: Tex('Rwema & Robert Resto'),
    actions: [
      Ic