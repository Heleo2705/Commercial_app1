import 'package:commercial_app1/screens/GuessIt.dart';
import 'package:commercial_app1/screens/InviteLobby.dart';
import 'package:flutter/material.dart';
import 'screens/Splash.dart';
import 'screens/Home.dart';
import 'screens/WhoAmI.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/home': (context) => Home(),
      '/whoAmI': (context) => WhoAmI(),
      '/guessIt': (context) => GuessIt(),
      '/inviteLobby': (context)=> InviteLobby()
    },
  ));
}
