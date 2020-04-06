import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
          ),
          card1('Single Player'),
          card1('Multi Player'),
          card1('Couple'),
        ],
      ),
    );
  }
}

Widget card1(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: ListTile(
        leading: Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        title: Text(text),
      ),
    ),
  );
}
