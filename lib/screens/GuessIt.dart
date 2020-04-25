import 'package:flutter/material.dart';

class GuessIt extends StatefulWidget {
  GuessIt({Key key}) : super(key: key);

  @override
  _GuessItState createState() => _GuessItState();
}

class _GuessItState extends State<GuessIt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guess the thing"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("Pick a side of coin"),
          ),
          Container(
              height: 100, width: 100, child: Icon(Icons.pie_chart_outlined)),
          ListTile(
            title: Text("You won, pick the role"),
            trailing: DropdownButton<String>(
              items: <String>["Provider","Guesser"].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          )
        ],
      ),
    );
  }
}
