import 'package:flutter/material.dart';
import 'package:worldtime_app/pages/home.dart';
import 'package:worldtime_app/pages/loading.dart';
import 'package:worldtime_app/pages/locations.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/locations': (context) => Locations()
    },
  ));
}
