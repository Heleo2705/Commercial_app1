import 'package:flutter/material.dart';

class WhoAmI extends StatefulWidget {
  WhoAmI({Key key}) : super(key: key);

  @override
  _WhoAmIState createState() => _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WHO AM I"),
        centerTitle: true,
        titleSpacing: 4,
      ),
      body: Column(
        children: <Widget>[
          Card(
              child: ListTile(
            leading: Icon(Icons.format_quote),
         title: Text("Ask the question"), )),
         TextField(),
        ],
      ),
    );
  }
}
