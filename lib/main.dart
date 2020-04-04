import 'package:flutter/material.dart';
import 'screens/Splash.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Splash(),
    },
  ));
}
