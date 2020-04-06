import 'package:flutter/material.dart';
import 'screens/Splash.dart';
import 'screens/Home.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Splash(),
      '/home': (context) => Home(),
    },
  ));
}
